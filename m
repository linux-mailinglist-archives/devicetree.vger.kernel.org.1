Return-Path: <devicetree+bounces-277174-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id HpwxC0+RumncYwIAu9opvQ
	(envelope-from <devicetree+bounces-277174-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 12:49:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C722BB121
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 12:49:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DAF91310AC3E
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:46:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 605D93BED2E;
	Wed, 18 Mar 2026 11:46:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZXlAX8b0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OvpYsoE5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3067F3D1CAA
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 11:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773834413; cv=none; b=pTrGI+vkKdc/IxC/Inj4dXOfKHcLXli65yug/ahi2x7Rhi/ce/YCK1IF7vh33Dru4BV1LVHNsc3DLsPv3DzHKUYB92X930djRyAsIdRaW4jqhptSPqLyZfrWDiJkugjhUfGDqcnNwxyhuO8RDo5DOAfudXvqxAPnLXhkyrLVNg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773834413; c=relaxed/simple;
	bh=9VTykINqmCDu8R1QtHKOq25cYN0GnhWOv9xqmx9VG+M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=grk/bZ+izd1Jlw8E7G5mqreqR7XjvJtXcUOktEuKhGelvO71fatYw2gXFgm/AQPSeittRkkj9gjN23MRfbJJKJP/wkjgTcPcULywCEDvHlWQFwk/FhbI1CgEall8UgkH88QLmjGwSN9+QVbu1OyA2j5UG/qNNEqOHSoqxF6/WHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZXlAX8b0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OvpYsoE5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I8lsOl084668
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 11:46:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	V/Uji+RduemsIjiUG7+YyFltf/mmFoucUv3L55v9doI=; b=ZXlAX8b0Nv9HWeey
	I5uczQOe/+/b+yOE2assXD5TgjudCvUwaWyQw2K8UfmUKSZ8I0tef1n3MptG8NvM
	SGWfmxSb/XHZlmFBbCDvL0MuJ6VSn2/Ha44BA/GTzg+QQyuECTFpJIY7rw7OEZ/u
	ARr7r8AazjNPBbsuFf9qrEKnedYytVZD5j6G6rrZsK3H0pepXhIVfIenMIKUBbc+
	u8Gkuo0HrUi3Jug+rW4XTHtskFg5VZ+rzfMMwCX532AHjGvhaLXo0UcTHLkgxHY1
	HXK80DRP4WTsCs16W5ciPoz57tNZgw4yOvy1z1EDMSYIwig0G50T3Rh2FcJ0gESG
	bjilxw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cykqet2jx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 11:46:51 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-50918b9bcc5so43409461cf.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 04:46:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773834410; x=1774439210; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V/Uji+RduemsIjiUG7+YyFltf/mmFoucUv3L55v9doI=;
        b=OvpYsoE5u9cq3nz2+i0LRJrnPq9NYahly34YpQtK7MkVVO8CzZviwvZd5LEcjufLoy
         ixbx6vkNhHwTgD0JtLnj7MhjUAB3k+NnsXgnLIGAHgP7ArPeP/wUfuX9HzQbb3VqZJj6
         XJm2+Uv3QV/0m7HsWLFow/hFqaXTyGoNCiagB7BelbNjGKCJ8+dJgrHHacnvhSHUMvzh
         0t6yScHAWKV48nxooDgVxyMNBdrMbL3PiG5ogNygM2qY2oV8WUZKmm89kKw4Z/NA+Wxv
         pM6v/V6pQP1a6C9FfowAFrRti3mcL2C1Eo9HjSrW+JFgp66HCg8tt4EzOSvoEU0Sg3HV
         3RGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773834410; x=1774439210;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V/Uji+RduemsIjiUG7+YyFltf/mmFoucUv3L55v9doI=;
        b=K+B72XDj36HimwP5HnXAFos9vhwumltiFhCk2Wufeljvw8bpMuEMjxE4JflXscF7jn
         CD1RV92Kihj87FfGqG+P6F079HqDHNqBMfMp3yYJb+E79NYbJnkVrW8Xnm9EWlU4BsMv
         oiIlHq+8Hstr4CMvKhAaGtcR08hMRUpp4EmGnoHEcJJfDcfignYub74qqgsSEVoNzsHY
         10kMoC+bVXfAwAhDeLLS0f1dHgRMpQSt4w/t4ZJySH+qoRIcd4iawzKoAzNJce6+4PyM
         2sNF5YzUOYrh8gO4l8PKIltmug/49ZJ16y8ktbL1UeoQyAyGS4V7Qx+LpbIrySB2ZuhZ
         KBrw==
X-Forwarded-Encrypted: i=1; AJvYcCUe2Xw7XAx8mJ2ZC8FndmpVl2aWf6cvWkWFA5B/tUCDxrSgDsymgG699N9CvlaDnqppXtb5DXqs8SOn@vger.kernel.org
X-Gm-Message-State: AOJu0Yyv6lZiyl8/1RoFQ7TROD9h4SjpaQo2NvsOe5pdR03DEPalDgLX
	6EaB4gfrCE9nEd5WcZwO+/kA30tGIVzvyry78z9djD1znW+yI6DQw8xbBP1AO2mfgs9nGv8HwUv
	cR9biDWU20BuAIsGYYG3rS3cWqE59/MfCJQXz7x3oeZUTSq7wdjCmQARI6/qAxnyc
X-Gm-Gg: ATEYQzxda4KalT2ONp1f4+K6TbvVLzO1G1W4lCAGimvpy4Dzu5l8Wf69HcPfApRZ8Vi
	Jq1MsemM45ldr3b1iTSZeqGaP/3585PhRVSPyv3tvUHTK3P+Yyi36/I3MH2QKYuJu6/ndcB7R/w
	w8XNDyK7k5qrihDAptxT8JOUBxgED37xwJbTPJD6VuPU9WIHNenofw196bGonE1tPTxv/nu88gf
	WcW7JILWVmuYyPu1KhkqAUYBL+RCFZgFkqYp0t9DNF7FOZ6PyStxolfw124pWLyd1Q+z5KWjMeO
	Atrg1pIZanByy/uzRG8XhOL8Zw9lBphdoLIH+3LBG8j9ccFstbee4YVTFD+e69oTTfGjVTbvn/C
	SV8Eu3KJAn3x4ga8Q/dgfJ7ncq8BwDn/5XzJn1NdGp7rXGjqiR/3+lxv2H93isAPpfIDtYE21N6
	4JjT0=
X-Received: by 2002:ac8:5995:0:b0:509:2b5a:808 with SMTP id d75a77b69052e-50b14752d52mr27010841cf.2.1773834410571;
        Wed, 18 Mar 2026 04:46:50 -0700 (PDT)
X-Received: by 2002:ac8:5995:0:b0:509:2b5a:808 with SMTP id d75a77b69052e-50b14752d52mr27010481cf.2.1773834409981;
        Wed, 18 Mar 2026 04:46:49 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-667b0eb986esm1503874a12.17.2026.03.18.04.46.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 04:46:49 -0700 (PDT)
Message-ID: <33290f42-39a7-48f3-8081-cc15bff2d370@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 12:46:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] arm64: dts: qcom: sdm845-xiaomi-beryllium:
 Introduce framebuffer
To: david@ixit.cz, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Sam Day <me@samcday.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Petr Hodina <petr.hodina@protonmail.com>
References: <20260317-beryllium-fb-v2-0-36b69dfb760c@ixit.cz>
 <20260317-beryllium-fb-v2-1-36b69dfb760c@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260317-beryllium-fb-v2-1-36b69dfb760c@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA5OSBTYWx0ZWRfXxksL405D9VSq
 Lrnq/jqUrhDDHXr8o+gRLy9DRZQcEkdLoOUgwr44jFsNw+tV2H8wWZ2uG7Mwcd6e9ST8dOTh/T/
 RIP8tJ+MGIxdtYQ5YdYFHQMMrig8Vbj6DTAwgjETABg6zJyp2Rwgud+HHCZ8nXACS3AdCsHpAMZ
 nTffRwdTg5FHHSTddn8PnOrFuL2/MguTfMZVdOK91WoECG76QCQ8vlgrItq/ohHtTuLwrsDzIk3
 P2BiEWRIWvMSlAfnJE4T3BUQXYgSf7FOffbXNwroFsGp5Uc6zJIAtCOuS36XjWETL5RyTYDX0PL
 yoAxbElqSvFOopXWutk51oVjNsW+Ch6yRftkRocRhRkjAI24pkWDguBDNuD5pWSJJbR4C8oVtVG
 GbbWbiqz+1lUbm8BiEVXko3M9s7o7ncqI/qzRDWv9CEtUySiRkqZLCpI4BycDf7jqoDEa/WeB6d
 DSsadx/KBq4yCENYmGQ==
X-Authority-Analysis: v=2.4 cv=Cd4FJbrl c=1 sm=1 tr=0 ts=69ba90ab cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=sfOm8-O8AAAA:8 a=6HfXokFIjMK-uoYlQTEA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-ORIG-GUID: pnfsfTluiTIH73MuF03aox17hcnNQaxy
X-Proofpoint-GUID: pnfsfTluiTIH73MuF03aox17hcnNQaxy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 impostorscore=0 lowpriorityscore=0
 priorityscore=1501 spamscore=0 adultscore=0 bulkscore=0 suspectscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603180099
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,protonmail.com];
	TAGGED_FROM(0.00)[bounces-277174-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,protonmail.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,ixit.cz:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 06C722BB121
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/17/26 11:12 PM, David Heidelberg via B4 Relay wrote:
> From: Petr Hodina <petr.hodina@protonmail.com>
> 
> Add framebuffer for early console and u-boot support.
> 
> Signed-off-by: Petr Hodina <petr.hodina@protonmail.com>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  .../boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi    | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
> index 01b570d0880d6..b928100f6464b 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
> @@ -39,6 +39,22 @@ aliases {
>  		serial1 = &uart6;
>  	};
>  
> +	chosen {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		framebuffer: framebuffer-0 {

Also if the label is unused, let's drop it

Konrad

