Return-Path: <devicetree+bounces-272832-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CAqaElikrmmbHAIAu9opvQ
	(envelope-from <devicetree+bounces-272832-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 11:43:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9497A23747B
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 11:43:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8679E30465CD
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 10:43:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEA75392C48;
	Mon,  9 Mar 2026 10:43:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="R/9it+jt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SCE4yHeC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F86739283E
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 10:43:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773053006; cv=none; b=VpAMlGGpE4hA4rqNtEe3eErE0BUo2SDDsC64L9TbEjQI9AA0NcXK9MJ8PRN2q1uEFQCOXAnfRg/FOqgvd68EQgUlEBxQLmi/tjpFXYmslPzwx0nPA9SS6NeP5ySx/Oxu4ENya/m3GLhHnidT1sO0wzQ4FQvnFo41VnK76UQ11Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773053006; c=relaxed/simple;
	bh=sPb5/XGqSfre152uZGAffubU4/XEw4cbnoZN6y63cAE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CoubjpVp9c1HI4dH3rQ5ENzKG9YB0jDuVZbaFAuXJYSnHvV5/LX4OqgIl32ZQKToPtpq1IQ51N6bGKCqcCfqCXf2YrvLbJJPxKDuRa4Zt4CcErZfJLHnXeNjFuOPuaAhOhTgL+Hfil1IDigfNjYXJOE7aYa3A+y5nyr1Ch4Ireo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=R/9it+jt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SCE4yHeC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 629602Wd1577725
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 10:43:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	II0hoBX0pO2WVwHgvDJeFO2zoIQI9yVhUQzikyLKoC8=; b=R/9it+jt4mUQUQ1p
	2zpWsIUdyz7C3yswwLqM8vVyvkallsU87xPeA6LTozOqPDaknKchRPZcDolP1T1Z
	XYXdMd+rNYbTPeNI97b+hM4nKi/d+Sr0FUDVsrCuK9X8YoV6yQWOJ7pE72lRFnaM
	ox/ZNfkhnHL8xSh/8/AnCmSrj/1cGMSxkzWqH6ZcDotef+sl8zbcLizhtakRVs0c
	amOrrGjaHin8dZV182V6Fx6qwwqIqFqzNjD+woYM64mrUyphyd8W870bgFltMgc9
	KF7PEe7IKeylN+MpPTCVgP0U2SCxD3RL0UwE0vxnDRIpad8PXyyZgVS+X8ETZHC/
	sHjNiA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cr9qewckf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 10:43:24 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cd90958f24so10202785a.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 03:43:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773053003; x=1773657803; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=II0hoBX0pO2WVwHgvDJeFO2zoIQI9yVhUQzikyLKoC8=;
        b=SCE4yHeCXe3/CNVJiDh6QNOjZZrw/fRJAn0Ydap8dVbmqc8N7O5i4tomwdHF+VKwCQ
         CxG8rf29VK18GhFcmaNAISxSMc3JNnp3uunIOROpSXJ/tmxm/RsBf/AsXuaXihZw4+HH
         q1ZALB6WxNulkqeKxyHTkv2X8NvVD3fMQ5/NHMWFz1BNzJ4AtM0nivxIdGnt/NVao3GO
         KEx0UNYDyTpkSutq+3rQ+NHZO7DqSokMFvFhkTie4WcoS5DnPzV5uuH/og4IR6oQ6w/s
         eHbDaPNvdt0cfHE7Axpi5RBiCQic0xRneX0iSsTbK+W6M36m/FNJWW7USynMhO8lk0El
         RfVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773053003; x=1773657803;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=II0hoBX0pO2WVwHgvDJeFO2zoIQI9yVhUQzikyLKoC8=;
        b=opn11g3TjkG0DjoKo2gIh4sjKp6PG3CKLtVutwnvVYPrJouNts7hhJ3HmrTTCT+04P
         qPn3e1SrDSroArO79KDvwmbz7FIZy6TbrEZ7lPnCX8eVuwC7ykOFUKRJaqWi70U8WtzD
         4QuB37m3qPX+T4+pU2uP/JrA3SJBc42vW3KNU/6ArV2VOIoUIv5PVdztHmT685MJxV6w
         znPn/4vQm7Max6IQ24+Ord2Vg12rNkM8VGiFGqiEI106ZOjSk4yLwDBdJkZ3OBLg1SFN
         Njrp+7NeU+WPGbCxxSHH9/yeNmHAmLSsj6XN0/LPkWoQXIgCe7MSVUCXyxutZZVa1+sk
         uNSA==
X-Forwarded-Encrypted: i=1; AJvYcCXKT+oNhpjDIISGorTXpONsihTLh9SQVSwqOH/J+a1h35F21ChywBOMx88sExdcyJxSUbMaTpTWuS6M@vger.kernel.org
X-Gm-Message-State: AOJu0YwS3lqMVMOabclkivuWnfElT6RsetbrSL3u3Gh/o/XrlDCQBywW
	dFfejNFPgJ61zPeeKJcqU7DpddCOr6/+dZ/bfxF357+vwch9IJ6Qh9uppXHRjUIH/t5Ofg7TkqZ
	zsjlSTooVCW8Y7qtfauuysUl76X0MYqierNKNlYDnOoHVIccnm00VrAGAsmCG2Doz
X-Gm-Gg: ATEYQzzJnke5QDlA8EdqywZUYiJcTeWFd8EBVM9OessXuHibLRPv/v3e+TRvE8S1m2w
	vYBmj9V5j5BCvUA9g+ZRcaW77VYKQYN87tsFgRVzVUgACTeDzaj/jBuu7+Px7IDGnOmVQq80AT7
	moP7Dg+Q2SaUyvyCeMQTWeKJ6hfmTELRtIJB+B+UE+xiaJVOpb1lO1pc2Be19tg4OyrqsPU60ur
	+6p/qALGlQ3LvOT91/r8mhdAgboPRBwpQP+3+o/gvjz2fi9lO1Nju/8wcG3BWNUIyNsCZYavNUv
	Adiq/NuQ7ussLR32awqYvq+1+Yt/iUHEtOACt1pNA37N+gkLhD7nmnkdXJm7Txu+qeIMxLt8wVG
	LdvZ+yYfbDlOiONkvbnsceIhyUs7tDn/Xj4IbRdtsJUbQuwNGnyE1827TxQjcGUSGymE3+0ZPdq
	EQQfA=
X-Received: by 2002:a05:620a:209d:b0:8cd:8bfb:a4a with SMTP id af79cd13be357-8cd8bfb0eb3mr132000285a.0.1773053003397;
        Mon, 09 Mar 2026 03:43:23 -0700 (PDT)
X-Received: by 2002:a05:620a:209d:b0:8cd:8bfb:a4a with SMTP id af79cd13be357-8cd8bfb0eb3mr131997985a.0.1773053002915;
        Mon, 09 Mar 2026 03:43:22 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b942ef48267sm350853266b.3.2026.03.09.03.43.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2026 03:43:21 -0700 (PDT)
Message-ID: <b65e62e7-c223-498c-9005-af8c74861a66@oss.qualcomm.com>
Date: Mon, 9 Mar 2026 11:43:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/5] media: iris: Add platform data for X1P42100
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Wangao Wang <wangao.wang@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bod@kernel.org>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260306-enable_iris_on_purwa-v2-0-75fa80a0a9e3@oss.qualcomm.com>
 <20260306-enable_iris_on_purwa-v2-4-75fa80a0a9e3@oss.qualcomm.com>
 <20260307-curious-skilled-ibis-fffadf@quoll>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260307-curious-skilled-ibis-fffadf@quoll>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: BCwCCjhOOT2w4Fwi_ftC9e8mXa0szoTN
X-Proofpoint-GUID: BCwCCjhOOT2w4Fwi_ftC9e8mXa0szoTN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDA5OSBTYWx0ZWRfX64XlJ7q81bv+
 q7U7K+paSZJLjkRxNFMTZmshpcotpp2MWdw7lyvbM+BAKm/Rf076JYn+M9ZlLPs6mIXfIXuYJ61
 z4hS1CoYBjFOtTZyEvcy8k3laV6jtshNQ/m+0iQea3cihBodXLerzTrGsfTCLlqQpQ6Hk0BRtZ1
 987SmGRcObwFUpxi1se9c9XbMNS/cn1t6KDUSaqXNyTrmoxBIWYfJgSJRI8/sbvXEnB0rBYQB2S
 D7yTvl92cXCwL6aA1aJb5TiMCaw5BE71dfQL7qEv1zdf3HKWeJgvj8Bx0byT0fCoCI1hWco5xaq
 i/Ikmc3cHLrLYvwIXOt8OGJ4EeTsxHpoPLU7l6dhT2h1NCoDD89VsqsEBSGjMXoLlICQ8WyJVa3
 6V+C5HOP8ACyHW+FUApYp7OAWEDQvKiefT60enIz8THaMzLSE1Lp0YA2EFfam6WzkbIKSW5QcVg
 KdmS91niODLaimqaixQ==
X-Authority-Analysis: v=2.4 cv=dcqNHHXe c=1 sm=1 tr=0 ts=69aea44c cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=qMkQcEziuJ2iUzqyXWgA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_03,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 spamscore=0 lowpriorityscore=0 adultscore=0
 clxscore=1015 impostorscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603090099
X-Rspamd-Queue-Id: 9497A23747B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-272832-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.944];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/7/26 2:18 PM, Krzysztof Kozlowski wrote:
> On Fri, Mar 06, 2026 at 04:44:32PM +0800, Wangao Wang wrote:
>> Introduce platform data for X1P42100, derived from SM8550 but using a
>> different clock configuration and a dedicated OPP setup.
>>
>> Signed-off-by: Wangao Wang <wangao.wang@oss.qualcomm.com>
>> ---

[...]

>> +static const struct platform_clk_data x1p42100_clk_table[] = {
>> +	{IRIS_AXI_CLK,		"iface"			},
>> +	{IRIS_CTRL_CLK,		"core"			},
>> +	{IRIS_HW_CLK,		"vcodec0_core"		},
>> +	{IRIS_BSE_HW_CLK,	"vcodec0_bse"		},
> 
> And maybe that's just IRIS_AXI_CLK clock?
> 
> People keep sending downstream code and name such stuff because they
> found it in downstream, so I have doubts.

As the dt-bindings commit message states, Iris on Purwa has some new
IP that needs its own clock for operation

Konrad

