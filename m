Return-Path: <devicetree+bounces-266044-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mMD6H8s0lGlAAgIAu9opvQ
	(envelope-from <devicetree+bounces-266044-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 10:28:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB0F14A61C
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 10:28:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C641B302733F
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 09:28:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EC843090DC;
	Tue, 17 Feb 2026 09:28:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Bj+5yXt+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iqXlYD/K"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550AF3090C4
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 09:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771320519; cv=none; b=l3v6771f8qwhDp2+CVK9bmy0NNZFMbRtnF8RlFX7bYpgwVJ5I5vbfsv0YiOQa3vKmxDRBZbk3dmBxxbgkKKKHJAh8kyW8R4/5/SepIyNwaRr+5JipN3bTa+NUnGccANI/itlzDG1iS6S2yrnX7ecqC/EeXYBzYnGAgdZWWU/PEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771320519; c=relaxed/simple;
	bh=pTfP5b+2Mi4mY0WGBgKBG7z/S2+qq8yi0Xdwud5vszg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ID2860r7591GoCh+cPjWmMcLn0jK8mgatmD45JihatcgRzlY20qRThmDnV3lF+ZY7+k3029eMOi1ryNpczq0xL5sY+9iVsVYFnC4Jg9guxrRhG2DH+RPKnTF7fA8+Z9hzUe36DkWiEB/I/Pqrc4pWo4cDSE/qU84PzQ+AlNiQYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Bj+5yXt+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iqXlYD/K; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61H90c7C1601408
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 09:28:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hD5B3RHvIT1cskPThbNNJ0AFJPZPfutqv2uU03n6d+g=; b=Bj+5yXt+gPv272Ue
	5U9ZU/lAkN20toSqlt0vhZdmVhlla1motFRGQMqV13lwcoazT7FeVALHswMXRe4F
	UIg14rpUov98fsgJRSG848ttWzcDuLtLdG4RJEo6NsLViIH5W3h1jgmbTNt+F7Yl
	sfSDFF1EXtdVXi2H+8nDbvgD/IGpFgzyO8nVvg3m7OTuM6T1FjQNNhiJ8FaFB6Sk
	vKfp3NXg8Ly2WV6izPIfM5mlHAt23HCmDIeV1Gq5oIr1SgM2LKYPBmst6+n6A8QU
	gLXZCMNwvq10DpBfxx9traeucNogE67+7UkACtXTit7RmU/GMcKBfqSD/mlZ1Ybj
	nWP4EQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc6tm9pxf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 09:28:37 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-506a3dde543so34899471cf.3
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 01:28:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771320517; x=1771925317; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hD5B3RHvIT1cskPThbNNJ0AFJPZPfutqv2uU03n6d+g=;
        b=iqXlYD/KRf2pCrWTupl+w7mPRWGkuYJgXbO6wgalB60syFADlPy8Yqt/5Rkae10atf
         xrjKVhzErV+TsMyBwnd7MU/MkL61uqQQ4z0Va2sTrO/bEeBfFUjYYT+vT6oHluMVxFix
         ZxEkRG+bxgPZsKGwHto1MiFIHqWaEZSURZD+ESosyEj/UWQYJ50eKs4SDjy9RQjG1j4r
         sk15Qw6RuYQYsuOAiRHqGMZeH8iwnH5ICZWMhCbuCyv25YNu+q9QRhmawklhsvjiHnTH
         Sd03KS47AqTuzNmNvX+uHVIfJr3md+8FVWuqRterSsjIcejHTKxHso2uKZHHvbrRPVii
         9Xqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771320517; x=1771925317;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hD5B3RHvIT1cskPThbNNJ0AFJPZPfutqv2uU03n6d+g=;
        b=Wyr+WLt42ODxJcCru6VJ+l0G4Zvv3JH1vfiszWtqwylfLQL8O9cxY2vxexlIv7+rRr
         jo204wQeI2+QQ0m4O7gJr/tO21ykCKbSwBLJ3zkv8kqx4D5+pz98nkqrhuGo+ijhVbDQ
         eeb6yl+9wAPlesb5XOaBRGfKBKhwUoMHALVt8dmvfyY7R0iammEh6dIM1pByeMkI3uz4
         7zFRMfk5HSwmDsD90nLzbTn54weN23YJ56YAZgTS3TdmgVbkhcKWPeqlS0Zo/wIRspUN
         9+VhWJLIPWbdPc9AM+MV1SHUBCro98Q/dvIWkfYSSPXz+2aC2njFsOBVT28/9X22pwN0
         H5Nw==
X-Forwarded-Encrypted: i=1; AJvYcCVS6mKx1TmEiwaNGXsaJsg1e1xbsr7yoPJHhUgA7fXRtGz8Z3jlh9uXQ82sxMoY8HY88zm1wTZxwqra@vger.kernel.org
X-Gm-Message-State: AOJu0YxFG5ox11CiuIrKcJ2CHZYB97js2cBDy5uEeum5KzRTsx4090Ne
	+4Z1jh4k8NUTxV2UD6s9H8z4mOAz2Oc+ubxYaU13QxjL26C6Bagn+hi9Jgq2pcZScM9ffV5YaOp
	JcIcYXc9aNOpVckaUofwUf0e8g5O4khV3VMR7OrYHMZUbzciBlvzxptYOVJPV6VLb
X-Gm-Gg: AZuq6aJLpZJLjAj+FjNBSm2pF4Esyj6menutPnlG5kZU9EVUrMLAQJWw7KZ0BaTdnLJ
	vR9iHHZ9a7mFnL+/Ix4hMEiX+YCkF0XRrEcYR/t1CcPcOobtchxHuDgByWFtO74SUC06ef7sUif
	eQucFgwzTzb6gLHGb7WXah3ticsurre4RrX37QVtyxbiXjWU4NyOEFH3FVqGrgiHBsKHhE4sxRx
	YPRGboVzQyAI/JmYLxLOTlL4xeHVaTvf1/GcmCFU60ekeGBGEHkj0ftbIjYoMhiUp9wMI4nGRxY
	96/OrkTPYn2Wnl6lT3X2lENBU4zlHky0NWrf3ShkpDJa9zuhvB6fYAx4K4jrcPqyVjtE6+xJpaq
	CBurhYzYNVZkepW3sUJ5wnwBsW5YjNnAilf/npQipJJoIXwdfPkIVFVpfWRYOTRc5MP5pfjXsuy
	eJJqI=
X-Received: by 2002:a05:622a:728a:b0:506:bfa3:55c8 with SMTP id d75a77b69052e-506bfa37aeemr70611681cf.5.1771320516669;
        Tue, 17 Feb 2026 01:28:36 -0800 (PST)
X-Received: by 2002:a05:622a:728a:b0:506:bfa3:55c8 with SMTP id d75a77b69052e-506bfa37aeemr70611611cf.5.1771320516286;
        Tue, 17 Feb 2026 01:28:36 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65bad3f1388sm2337658a12.28.2026.02.17.01.28.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 01:28:35 -0800 (PST)
Message-ID: <da9aba75-f52a-422a-9899-6581ee9b8b7a@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 10:28:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/6] clk: qcom: rpmh: Add support for Eliza rpmh clocks
To: Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Taniya Das <quic_tdas@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260217-eliza-clocks-v4-0-5d09f28d4251@oss.qualcomm.com>
 <20260217-eliza-clocks-v4-4-5d09f28d4251@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260217-eliza-clocks-v4-4-5d09f28d4251@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: cbqV-zvbzhkY3TludrAS59k0qCCus4hc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA3OCBTYWx0ZWRfX8AH7sR3LEdv7
 0wJGZIGv4moVRLyDZoureLT+tEm4CSFJ/nRqiF5KKh4rtGoodbSpmLzfKbXBg7dYco89l3Wzoc8
 vuiDQczMJyPR0u12ytVBwmSNC729v/N5RAst7/17smDpJnzdVpI6naZYtHcAMbBTJs925USd95W
 GyjS4CWtkO8dd3KCD2Y7Au5JaajvLFIlCpduiQWJ7wFGd1lWhpGVSA+Q6XAqp2keoGru4MGIr7k
 AQ8ZuMlM5m7FN1zwmW5t5jeEHqx6vhExRYhUtFX8Q4NEtV/JXBEQ4HK6yjvWHZbKPNz62f61p8E
 JmqThqMbxm2/F2jAC2bkvcuIKmMAI5+NOaijXbXIiKjq2qnX6rn4QZY80wL3xPPRgMTvKH+xkiT
 2EntMxveiwu/HoxQuPj4L+1+g5S3vKJe7suflCG9aZIANitxk8T6zfE32B3T89MEsLymwYOHMT/
 xU7nT6GEqVftsVKuAuQ==
X-Proofpoint-ORIG-GUID: cbqV-zvbzhkY3TludrAS59k0qCCus4hc
X-Authority-Analysis: v=2.4 cv=IOoPywvG c=1 sm=1 tr=0 ts=699434c5 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=QfZBNxv062MJluzyly8A:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 bulkscore=0 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170078
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266044-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BFB0F14A61C
X-Rspamd-Action: no action

On 2/17/26 8:52 AM, Abel Vesa wrote:
> From: Taniya Das <taniya.das@oss.qualcomm.com>
> 
> Add the RPMH clocks present in Eliza SoC.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

