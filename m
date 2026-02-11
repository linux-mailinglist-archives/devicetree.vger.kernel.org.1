Return-Path: <devicetree+bounces-264618-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gGu+KNUXjGnegQAAu9opvQ
	(envelope-from <devicetree+bounces-264618-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 06:47:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EC175121766
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 06:47:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4E652307C06E
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 05:43:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C16334EEF1;
	Wed, 11 Feb 2026 05:43:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UNtG3Srq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Lfwg0IUz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 560C734DCFF
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 05:43:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770788600; cv=none; b=kXSnz0SPo/+V1OFi0cN6dQvl6SmQvczX50JM1cxYTuahZ0BhjCdLMoaBcfABPYLVOIwdHcDnoNydKwMQvH0x1+Ou52Zq3BD7WLVpKolMU0VqkqTnwPLTsqK6Hhw3ROlKYeqSliDOz2QE7CS+s0TwbaedPLCQDl/Mno14uLTDP+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770788600; c=relaxed/simple;
	bh=toYSo3OobrugapftHePbdROlxuAVnQF6XcZup3CnDTE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IlMAFgvPEORm6VecFLycDdtDtcKtXuTh5by/eEqM6ZEYEYvoCv07JYmN5GZ7nbdottQKZElqqAXWxA63bcAxoxi8alfTA3Gbk64E0ozkHOFL1idV0PCt5jP4PqFzVEVwgkZ9hzY8HRgBrlf2BocTf4lE7cjSLUBb4w9UmyUWI20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UNtG3Srq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Lfwg0IUz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61B2bXHw3203772
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 05:43:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dfqXLcfgV6a9lK6a9WVNtmA67ZK8MlXpAND6ETLw3Mc=; b=UNtG3SrqjuIuFAaw
	c9vYK1aH5USgoDwQzdmzxWQOTrLMQcxozfyB6nJDpzX8+Jm3CUQU+YUkL7fZw7BL
	+PyWsPDPDUD5Bu0GIGJi3XlkdKDc1xyLlphtm++Mk/N+aAQXB7sAt9w/ikZPTprV
	Kg+PZHPoKt60sfZc/yHqxvcANNaIoijnS5gEbFvcjl6YqAWdV6KnB6Juun23Z8y+
	DHNL6jM6QFB9zMv0SYqIt+P7SL424duScgEHxQk74S5zNtkk+dFJmdo+OaIK1+35
	ETQgF2ATW4dgvKT/ZG89d7OubNyKcYtlxT+bc7Uj8ow/SK9czJvI5Tr6PuiVZa5S
	Tet27Q==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c894g20rr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 05:43:18 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-81d9b88caf2so1671888b3a.1
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 21:43:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770788597; x=1771393397; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dfqXLcfgV6a9lK6a9WVNtmA67ZK8MlXpAND6ETLw3Mc=;
        b=Lfwg0IUzuu9JObXBNEIrVYNrfioQXS4w1qKdZEZSUJIbU7kBhKuGj+jCwpmQJmuQff
         bwJMRNNx1GBMJTvpO590DrsvMovWQXmhSPHpHNxdaSrwi4bKFQX8Miv5Jw1o2WQ/IdWR
         VXKaGfNyDzzyOTB0BJwEfBRCIG2NRmf8vZ5x2Cf5CbogpNAZ9T7laDzsYDF8KicU5N+P
         TP1AREuLcoFCmijBW3seBg3BMUzLpg1AKhbKSiz8ZEDOiYvlpkcYc5xdMHi9AcPU3Hn3
         1gQuQZyTJEujSV9DcPbxSEI/YZJyCxdmpvpqEQW3Giiq9J3HdZER59vFiG6zog4DiKOp
         oX3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770788597; x=1771393397;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dfqXLcfgV6a9lK6a9WVNtmA67ZK8MlXpAND6ETLw3Mc=;
        b=BwKyeiTCCKS9LRMJslgZYM/lpEa1SPTt80GahhmkYqrcoWD4LjIipLMdq+Nb7mpX90
         lkio534ep0nliSeSUnvJgEi8UBI0ReZYRcoInUejMPqHkQWNZnLRjPU0el1USk/FzDi4
         w/XZkwETskXP3wjiLmWR8Sp1Z/1Y4F7Vx3hRy2DsvwaoMMBEfNo0vsGoKS5HUkkm5WU0
         1KrufgnKyKyhAkS+IWdie/SKOE3fsMT32xnL89CXGLJwiIsFNeso8Q3iSf4zHBRHfu1g
         QVLFBx5LDUbqRZM52IdCSKMDnXmIAhi2FBrP1QhnDpcis+72PvQM3lOJH4rjB1wwOqCE
         MQ5w==
X-Forwarded-Encrypted: i=1; AJvYcCVQXVncFhJ9WQq6FRl5fX2tC2N1FvQOOH7vRNwJnCQFv1Nm+NZV3FnzxW2mVYttUXD3MhJSw5P8arHR@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0SV2Vc5b8mY4mOm9ZP3SwxH3etThdvszjSat7nmDlVlyMiSDY
	ZBVcmin1aH7w4qY+qAA+3VX8Y4Ggs5tlp/vTyZOdR6ASI63+V2V2qmMJAHzRo0zIfiIn3j/1D43
	m4u03gDVAz8eLSnB6dSgf0gJlHZ1PhS+QGpGvWOl+kYp/2MGQjHSmU4Oj3y4orMxq
X-Gm-Gg: AZuq6aJVFCqR0CiipmtCK1aXwFUQGGNQ82u0sblKFcKFBFlClMY2eEMuZvfvrbAPO1M
	ogkeAV8DguGVQ32dJpphhZ1pXev84kKoTGlPQd6O3jkhVujD2UbENrEPN90jysDW9xsQVtzWQcS
	SC1hd+vBV9F0Xxc0gR9W+cjOJF5L4A9W1CqyEnrUwex3LdhAF2dVnEXh1dbc11LW2aAqS896uc3
	lgo1cso48+ls1JAXBOnna6e4llB323oyHPFZvU9/JQFxe8XHO1SShG+rPSqknsxlg4ii9PSKIND
	C6ORPG70JoappCWKUQU73tPZQU93ZjaGVX1AN3FppnE2oUABX1VS1iq+S3sHQ1nAX9GpvVZQJzl
	DTWJWV/BERuOjtJYU3HGjFOQEWbQ2y0f4iWACcXMDH8XjwTEdyDQrKZZb
X-Received: by 2002:a05:6a00:7581:b0:823:30a1:d5ba with SMTP id d2e1a72fcca58-8244174c514mr13870062b3a.51.1770788597233;
        Tue, 10 Feb 2026 21:43:17 -0800 (PST)
X-Received: by 2002:a05:6a00:7581:b0:823:30a1:d5ba with SMTP id d2e1a72fcca58-8244174c514mr13870043b3a.51.1770788596773;
        Tue, 10 Feb 2026 21:43:16 -0800 (PST)
Received: from [10.219.57.109] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8249e8528f6sm722418b3a.61.2026.02.10.21.43.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Feb 2026 21:43:16 -0800 (PST)
Message-ID: <88a5bbd5-8bcf-495b-be68-65cc06a68f1b@oss.qualcomm.com>
Date: Wed, 11 Feb 2026 11:13:10 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 2/3] of: factor arguments passed to of_map_id() into a
 struct
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: robin.murphy@arm.com, will@kernel.org, joro@8bytes.org, robh@kernel.org,
        konrad.dybcio@oss.qualcomm.com, bjorn.andersson@oss.qualcomm.com,
        bod@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
        prakash.gupta@oss.qualcomm.com, vikash.garodia@oss.qualcomm.com,
        iommu@lists.linux.dev, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
References: <20260210101157.2145113-1-vijayanand.jitta@oss.qualcomm.com>
 <20260210101157.2145113-3-vijayanand.jitta@oss.qualcomm.com>
 <CAO9ioeVwPhbW=mkGUZQdCJH+C=KVf1bm=SDkoDinrj+nD94s3g@mail.gmail.com>
Content-Language: en-US
From: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
In-Reply-To: <CAO9ioeVwPhbW=mkGUZQdCJH+C=KVf1bm=SDkoDinrj+nD94s3g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjExMDA0NCBTYWx0ZWRfX5WCWl6oL/76l
 22WseiXJUQOiNw68qNToi1Wurq215dlbuSk4BGK4lGQwCgHD+Vifwq0VEjwtPdFxYk9hHYI96YY
 OvVkd36O3x7Qihm3oFUDrp7c6E1JjausSURR0v7Eajub737nGYiExu7j7Cx4slaAZEqJsbtgUk2
 o+rEiWs2wIdLESv9t0JwCbmhv4NiDg3yQ2+/IwRP7Sanrc+kyPXpyUondKluHSLoXr67b9bOQS/
 CzHymbmhefKP9eUu6Kwwj+tqyklRhtBgcHCLYoxk++vpExb0ck6yFunI3+Lbak+5TgpZPGar8yU
 hetJWuKlp7lzVnvmVZ5Gu2r8AwtT/disM0i57/ZBsolHsqBTlRiqVIJNGSz4RIlR0H8VIDxwX+W
 /qXISMdU7lEGXY4U850dIH5YKwAjZymLJstwX0kyANehOiWaue/AmqlA9LffRxJd+9pSsBKkoB/
 AKCAk9BeDESqUN5tBZQ==
X-Authority-Analysis: v=2.4 cv=R64O2NRX c=1 sm=1 tr=0 ts=698c16f6 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=oAmyuOoVcDRkA2_ul38A:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: dCEoiNqCpMYi4IZx7vCFgI5x2llcb1Ru
X-Proofpoint-ORIG-GUID: dCEoiNqCpMYi4IZx7vCFgI5x2llcb1Ru
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_03,2026-02-10_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 bulkscore=0 phishscore=0 lowpriorityscore=0
 clxscore=1015 adultscore=0 suspectscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602110044
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264618-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vijayanand.jitta@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: EC175121766
X-Rspamd-Action: no action



On 2/10/2026 5:30 PM, Dmitry Baryshkov wrote:
> On Tue, 10 Feb 2026 at 12:12, Vijayanand Jitta
> <vijayanand.jitta@oss.qualcomm.com> wrote:
>>
>> From: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
>>
>> Introduce a new struct type where the optional arguments passed to
>> of_map_id() are Currently embedded as of_phandle_args struct.
>> Subsequent patches add additional arguments to the struct that the
>> caller expects to be filled of_map_id().
> 
> You updated the patch, dropping of_map_args, but didn't update commit message.
> 

Thanks for pointing out, I missed to update commit message after removing of_map_args.
Fixed it in v8.

Thanks,
Vijay
>>
>> Suggested-by: Rob Herring (Arm) <robh@kernel.org>
>> Signed-off-by: Charan Teja Kalla <charan.kalla@oss.qualcomm.com>
>> Signed-off-by: Vijayanand Jitta <vijayanand.jitta@oss.qualcomm.com>
> 
> 


