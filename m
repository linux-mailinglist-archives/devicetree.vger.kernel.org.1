Return-Path: <devicetree+bounces-277827-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KHUCLpYMvGkArgIAu9opvQ
	(envelope-from <devicetree+bounces-277827-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 15:47:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 197AE2CD1FE
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 15:47:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2F64630610C5
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 14:45:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 570833D811C;
	Thu, 19 Mar 2026 14:45:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K/Ew7Usg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jpdPwgLx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5DD33D9055
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 14:45:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773931534; cv=none; b=FlgZbLxjj8wKY8o2fsHYG0Phcx/2Jc0Truuq2uClqe79spGkN4o8ywVG/0BfjN5m4WZLg3s+65+nG843i8OW83x7k95dpvEKUNU1H4a4dMx5Aos/vOMMO6UgQ1rJ5rkLcQwrLQWkd692Obf/sIsHTX2RGHhT0xbXzRazpMbTnOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773931534; c=relaxed/simple;
	bh=Mzcg9iGhNsu/y2fOj+RRyQYTdXyNml9qSUT/osKkUgc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KmhMBsfUJVs2HUzZN6HpJ3wP1KWvvqodFwF/RXWsIKymUZlSpOXWAQvqM1J1nq8dt+/m5r/4hlGTDbHr4UWpSA9UH16RAGhIQzKMoMgUMSVB+72sJ/7POFfNistgVFxWK4G5AkOk9udlZA3t2rmaQLa63OC2eo5AZxp/cUapNk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K/Ew7Usg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jpdPwgLx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62JEW7oE2981458
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 14:45:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XY5v6F8rPGscn76B3hyt9Ef051HgBM0NA8ksEqCL9Wg=; b=K/Ew7UsgX3do3O2X
	q91lxMJxq5fSVm2oZVPYnR0uySRGOBJRRFSWxIn40tvadiwo3WvFDDLqMWGo65FE
	E8EuKXwOWo57x9CDRNyu36oBeHxskMrcwzVk1OH+444747kW03++HSWktNu9m5uw
	zBJQ7CCVzjiPbWRRaK6On0UDXbbN8HRPvWqW5W+Hz7z+28BxZ65aU5ApgM04TIoR
	212lxl08bADseUWRXLaCsAIDEZw6ChWkpR3rV8PcOR3FtONmz+rxZwvtjcTArjzd
	A2hhwTyy7i8MaGa/K2q+Rt9dU4SxQ23hORHnu14FHhiTEjA+S98pIrouFp5xEyml
	70JGEQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d0k0801nn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 14:45:28 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50947db2e97so7559531cf.3
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 07:45:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773931528; x=1774536328; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XY5v6F8rPGscn76B3hyt9Ef051HgBM0NA8ksEqCL9Wg=;
        b=jpdPwgLxQu/GVpN11XUEwIPVCO/HbfBY5DcmkfJELfyHi2DmgyHwRUBcvmWburcHjR
         y/o6ERldMxtY++ooim+mo+X9pMko8bHyLpWyQ3ovf/ILZNc4Y39XB0akZKrNjYpvybni
         4TlFHp/c7sYzdN9pANuZRdqzg+ZX8IUHvnObjb/e82ZSKSb5lFEC+u3lueZxpfDm1Shk
         EkRgiYGQqyGZunP74cYoojgORkVPd7iGX4bW01maAL0JgiJHLRWzzIBL3le2LwzTbukq
         mG9F3Hu8Nz2SBSSGozBvuDKbiACrMDeX4GcMRLZq24VMgxjQMNQUOyLjaTm+PnsfR+QQ
         yJNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773931528; x=1774536328;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XY5v6F8rPGscn76B3hyt9Ef051HgBM0NA8ksEqCL9Wg=;
        b=KliUi5YlrIj/0LogK74/BsymDd6H8raz5GP03mhaCkgMpE69UREfyUc3Kw5IZkSIzq
         oOgJTyqrQXIOAEYdS22G+sGy9reedcpJa9L18uoEYMJ5diP7Itvfo2cuii0wtaM40zQw
         tP8iZ9lekozlgkJaAuBFq7WjxyRQcqbAGxSqn5WmY0l4U/bCSdYhAiN3kYJV84YGdNUD
         iaZkuv6acqdWHxazQcAtj5eQM4vitIGaW5Y8H8jjJ1YtRcOLb8Q/slJLSxvmQV2zW7Kh
         BjWS3k0dECXfqLAzGO5/IzRZ2dDqFdAdAnlT6qOSc/emjSn32XqT5NG9Uo6UrjLlf0nF
         C6DA==
X-Forwarded-Encrypted: i=1; AJvYcCX9zKXolRS2fUvodWbLrR8GwGRWdvZxsgX4Hbgl9kOAaapvD7XhgWEGEtfIkJ5NJCub6hp7Txs1ZQNb@vger.kernel.org
X-Gm-Message-State: AOJu0YySuiyoTWR1CQmmT2k3nvv1xcnoQXD1E7iJycfTS8l+FhRk5/uI
	vsHEbri5ovZIceMOWpKNWRMtJr19LlucjxJaX+IIYKUXhENW1CIHfRnmG9WxGQyICkhRGqmp2Q6
	YIHjEicrQqhVCPCWaFZRfMFREnKN9ZZwld7vtsF9nW7VNoZ9tsXb0cpfXfCYhATLA
X-Gm-Gg: ATEYQzwYMMMuHkEbEcZGMv9QLAPT05r2gL9RDUfvd5ox45RDXuu/YSlGg627CFjvM4w
	qP9hNyyWiYjkqhP+ivF18fzePBBsIhJkoZ7L214PSATbNsmEjAzmNIzO7QYdh+/cKM6eIxcAzig
	z10LDTk4DHi2Z/iacNpEjrMiV1KzzEsj2ip3Gfw+tlqDMXGJPDacAytKI/cn8Lh/AC2E0oo9gtt
	sQfhLwslWQ6wipaewUOTi6Z51J7QU071+7iMwox7UDFP3BYB0B30pBW/LcmlwK+/KSlGd5VVYzS
	6MOvc+sNoCmGD7DrHSTpFwadyFIHTzXKSj4TW82QvPoplmb8c8kXA07TNaxSuXArHIqb01ne2LC
	SeXS9Jn5DejVtfe/EtlNc9cGznShHci10Qp7OgVwueFExBr9LapzrJLUKO+If8nxMBB75SwwLrZ
	X2P9Y=
X-Received: by 2002:a05:622a:58e:b0:509:47e2:9df3 with SMTP id d75a77b69052e-50b147532d2mr81034111cf.1.1773931527928;
        Thu, 19 Mar 2026 07:45:27 -0700 (PDT)
X-Received: by 2002:a05:622a:58e:b0:509:47e2:9df3 with SMTP id d75a77b69052e-50b147532d2mr81033441cf.1.1773931527300;
        Thu, 19 Mar 2026 07:45:27 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f13e989bsm472548266b.11.2026.03.19.07.45.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2026 07:45:26 -0700 (PDT)
Message-ID: <0dfed5a0-1c07-4e7d-bca4-8183e44c3ada@oss.qualcomm.com>
Date: Thu, 19 Mar 2026 15:45:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp: Enable USB OTG on functional
 Type-C ports
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260313-topic-x13s_otg-v1-1-cb2e4a08e25d@oss.qualcomm.com>
 <y7sxgdmxdn6fthnxkmhs2ja5hfw2mtbdl2zfqkfocn6pwnwxq2@cuoldngtvuht>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <y7sxgdmxdn6fthnxkmhs2ja5hfw2mtbdl2zfqkfocn6pwnwxq2@cuoldngtvuht>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=MYhhep/f c=1 sm=1 tr=0 ts=69bc0c08 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=xFAtMjX05kTKXHXDGPwA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: wHgJk4Pii_mdo4Dv_OOTb-dnykl94NaL
X-Proofpoint-GUID: wHgJk4Pii_mdo4Dv_OOTb-dnykl94NaL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDExNyBTYWx0ZWRfX9iD52hyg2nPr
 Q3GJUZrWNIzb0PY9nAc2mRx324K9Av4GcaO1Wzs00yK7U/XdYmoFRiRwBK/8gbfY0BJ07PmT8EK
 MuvWzjMT3ZKLVOjRgCm64yhqWhHUwb4MFrcuXqcJVKa3UzTZRvJHxxJQ02qJ84lhpvlEQwgiPdf
 5e0Bit5qv+hTFk/FQHbkRJ8XftP5J/EA5q7FcWp+vQK5vc1gvDy64a0KV2+gvchfxrXDAEiBULQ
 BuV2JJ18QCT0r5VoTvG6JuuI4N754VCd/TL1VS1T3xGAF7emcGAQq6Op2g5xHg6iZBHp8OV1CJB
 iA8tD+Y0dNZg612PYr4yDzhCBl2W0WEJflEn1U8eXzkP+Avy2BdElUlYvGSFuBhqPt3ytx1gRG0
 21yJj8iTwUo1mOXLpenC9pph2N9pkQn7j9A80R/rtXXCFJyeAIoRKLvsKDiOczNRbPg1SnlNJf/
 Z3egujR+p7n5C/ARqNw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_01,2026-03-19_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 impostorscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603190117
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277827-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 197AE2CD1FE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/13/26 3:37 PM, Dmitry Baryshkov wrote:
> On Fri, Mar 13, 2026 at 03:08:03PM +0100, Konrad Dybcio wrote:
>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> The two non-multiport USB controllers present on the platform are
>> role-switch capable, so mark them as such. They need no additional
>> plumbing, as tested on the X13s.
>>
>> Enable OTG for all devices featuring a data-role provider in one fell
>> swoop to prevent hitting the edge case where UCSI code would time out
>> trying to get a reference to a struct usb_role_switch, which wouldn't
>> be registered if dr_mode was set to anything other than (the default)
>> OTG.
>>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/sc8280xp-crd.dts                  | 8 --------
>>  arch/arm64/boot/dts/qcom/sc8280xp-huawei-gaokun3.dts       | 8 --------
>>  arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts | 8 --------
>>  arch/arm64/boot/dts/qcom/sc8280xp-microsoft-arcata.dts     | 8 --------
>>  arch/arm64/boot/dts/qcom/sc8280xp-microsoft-blackrock.dts  | 8 --------
>>  arch/arm64/boot/dts/qcom/sc8280xp.dtsi                     | 4 ++++
>>  6 files changed, 4 insertions(+), 40 deletions(-)
>>
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

Unfortunately it seems like that while it works, it makes the x13s crash
upon resume

It also crashes there if we flatten the DT node and I'm hoping the solution
to that will fix both, but we have to hold it for now

Konrad

