Return-Path: <devicetree+bounces-267876-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ALzwNDGYnWnwQgQAu9opvQ
	(envelope-from <devicetree+bounces-267876-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 13:23:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 97063186E37
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 13:23:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7A89030F61D1
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 12:20:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B41B396B67;
	Tue, 24 Feb 2026 12:20:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N80Ongis";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DNIv06LR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA1EF396B8D
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 12:20:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771935646; cv=none; b=iWuVcAe3rXHV57+6qtK0oG0wS5PGMi+/D/rDVNeyBgwv6wyBv4F2EnjsPer6dWi3rT736131wOx4WVS0cvBsJVJGIDzY3Se5upbesZxp8MvlI2gMiA7Ize9v1Ph6ZvIXZTREDgcX9MUGmFWDK7AX5kiuWgCWX11Oj6fM/l+HfjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771935646; c=relaxed/simple;
	bh=SOQJDg8sFUhM8+VsFIcMB2KmfAEWI59OoNlz44cqRWU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jAjt6a+DS7GGIGsEhFdhMwfmZL7JNYIuOoKE1OJU279P9uJUn9Jl4t0tidGvyOHPLCEMqE9/fOlD/iemVeA9CfS3gwGUUzeFb9Hx2/lxTTglkmF1sUoIRCox1bPzSTyT2nick44RRDaB3wmdbXTf/2x+xIcW8AqbMO8QXxD7YsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N80Ongis; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DNIv06LR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61OAFSlA1446371
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 12:20:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FU/aNNjxt/IN4iVWVTZoosiC/J4FxqYyMmMiYQMpZPE=; b=N80OngisMezb6JZx
	W42IMbsfiuCWN3CzOY290DV18i1qojO2FN4YZvnecfodupsYpkRbX8dbBgGuSBAy
	FmYCDokMLvjQtvCy/XWMzXkRa7wYkkdP26qAhXf9o4CTmwaxmrQdS7IYqh3eWbnU
	TrzZje1alg+1WeJbN+Sh6JHTd5YK/21Wbo+l3txZH0aFn8NO+QwgPVQP2RqRbqvd
	SzA0zUOg98gQFwBewbSmPaFKYjQz5+sn8o2lhmnFchGYwA47EkqmFVMdVeesPS3b
	KgdXKvJSDKT3gN86iXAIIB+nL86kurZ/vdH7LmAO+59AceFzdo2P9lKleLWpELbO
	qaa0mQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cgtv9u2bc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 12:20:43 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-899b0035eccso571926d6.0
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 04:20:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771935642; x=1772540442; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FU/aNNjxt/IN4iVWVTZoosiC/J4FxqYyMmMiYQMpZPE=;
        b=DNIv06LREGUpiLhFWqZuuxGiptADPRZ3o1UIAU5DnSOCDDXjKHdWe3QVynpCrXooyM
         vySzLjn9KiSy/11QVS8PUh9jQNDPeXToWT3nO8y6MvNO3inZg6DYHIeWQxNy20Q4mqEs
         +gbRHekw7pObUfJtISPeniAa3DHlM1PfGziMofEn5KCe0GeKn9i/RSxjpt/QjktbxNpm
         nZ8KpZO0YfnkWLkruErh1YOGF8Vao9q7cf16U201Lm/Vq/GEdL59BTcg/XmQk28WSSpx
         G8tLLwtuL+R72iwPfostPVB+7tkyGPeIREy+ZHu/odRboCNEDQgCuDmE9G/KB37RwN9I
         92tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771935642; x=1772540442;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FU/aNNjxt/IN4iVWVTZoosiC/J4FxqYyMmMiYQMpZPE=;
        b=L7yD9qOBE3AFeTEip8lpOaoGvS9Siov0hG2WAQs7zgs8RkpbOxFbVldZwtXJgUPGsh
         tvveaQw/FycUGMrPpprLEcWOB1Vg4DsauldTQWa4xzoeZBoSKOff6zWUE/WRy/zvk4yw
         zwdiKdGB9DpdVKGJ8PG2P9BwijFPVUowSWFGJfO5htszbMj2uAxCKbifojtl4AAtGc8M
         0vrIAPjZhY5tZUVOKjXBBfzVGXf1ASWhj3HgQaQb4oGhE4ZSKsWVuonetvdnzYxND/wQ
         8sEa0oCbLe8O8tDhbwi7cmlpui8WV1xfnCm1nBsy8StyJsE2NL6VLqRmodZwg3SAlfHi
         Ni5A==
X-Forwarded-Encrypted: i=1; AJvYcCVQ6mgfgNxxh4EryA6noDRLyNdViU6qz0Ke2J7Z4g4NJXv1xmgoNSGvGkK09LWB9uyFPkrwe5aMFhgw@vger.kernel.org
X-Gm-Message-State: AOJu0YwqdyAneSueR7IXtS1N9kwMYOonaHD6A48vjD8X2A40s9kQP7px
	1eI2DRX+f6C5blaec2TZEJvWGZWToSIxoefu42JujP7GMCP4YXwcmWY3jKhEh3qbvqkZ0pskPue
	jUh1DiAUkbngdtCm2kZOHfkb1d71qI8TdxiyQGIvptz3p6I+O1CCRBkuEgpdeYVCD
X-Gm-Gg: ATEYQzxnZ9vVaAZwv2tJHRR1si3sws3FIvA/pOAMeKvk2qq6MkHsD0PsZHUkPQWJmc4
	1TFMGA2iOL2fcS6yLZXbNIIFXtH0wnyB9LVV5Hf96QGqGAa3VEvwlNAwyagmIsOPNswf1R5lumj
	e4t3/gzSP4eR44S8K2gd/OLwT57oNAFLtU5PlvwyS3ChoRrUHQjEYcGh636aLVreTCOG9MJkwRg
	xMyu2vJJ1UilghnIl/lZmjYqLpqSOQryzazjOHnSnw6eXt5QNbBK4ZdIOOOoG06z5ap0d4w6LME
	wsePtL1t3K3M5bwbtzN/Dh7YFeuAX/5+JUnk6qwbatFHS7+ZeJrb3h2Mlt3O/raXBHWKHriijk4
	+sebakLXWtCCOyGTmZUSLSghTLCxhUHmLHOlEWLIMqKNwIPWmdy/teUY8mNMHSnUyQ4+JnBGBJS
	lByaM=
X-Received: by 2002:a05:6214:8013:b0:897:430:df71 with SMTP id 6a1803df08f44-89979dbb183mr112360786d6.4.1771935642094;
        Tue, 24 Feb 2026 04:20:42 -0800 (PST)
X-Received: by 2002:a05:6214:8013:b0:897:430:df71 with SMTP id 6a1803df08f44-89979dbb183mr112360426d6.4.1771935641582;
        Tue, 24 Feb 2026 04:20:41 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b91dacfcf77sm65761166b.13.2026.02.24.04.20.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Feb 2026 04:20:41 -0800 (PST)
Message-ID: <f2819156-a1e9-4159-973e-3e3db5c20cbb@oss.qualcomm.com>
Date: Tue, 24 Feb 2026 13:20:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] clk: qcom: fix SM6115 lpasscc register offset
To: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, lee@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, sboyd@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alexey.klimov@linaro.org,
        r.mereu@arduino.cc, srini@kenrel.org
References: <20260223133950.221234-1-srinivas.kandagatla@oss.qualcomm.com>
 <20260223133950.221234-2-srinivas.kandagatla@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260223133950.221234-2-srinivas.kandagatla@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Vaf6/Vp9 c=1 sm=1 tr=0 ts=699d979b cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=Z76uCUixtZHKFt9jzIIA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDEwMCBTYWx0ZWRfX6pRci3cvL9nn
 5QwTToN5WYc9gRoVK8ZmBpKmsKC6AvebgeeGx69615DT2bdFM5VqsYzM5Fj5OWWKlzuJevzYwQL
 HDVMOf1nmr1/tUriUweLYfLjLFQj9g+hSRObmnSoLCtdTxW5zFyveOVcAE2pzOqdgaod57bnC4D
 rlQCW3CGGWEzjUJS53IXfz/CEyuUVa5KhhBAx4wyL8/dq+jj3OZs/5YvNmDX/J+f+zqfn5yaHEO
 lwCBgXfB41wHF/g9pnGzvB2mltMkCOXYIFsenswhDweIzT/rebZpniDok55HHg95nO99X+ZOooH
 zRNqoqy2s/NqSkh3YinxXNVEsObml/GVLSZNWtIA2cgc9b+LrlThNrPhB7t8WBN9JkpUcN0goDF
 a4PD9NpGyjtPxSJIWOnQuo2+HpGTHpZu8ioOWszDszUH3N9YcznXL4RFW089DwtOAk2a0o8BHIi
 mug6TaqLI+IZgBRMlaw==
X-Proofpoint-ORIG-GUID: KtW1b-wldqZJ9qkg-buRVAbfJL4ytuM_
X-Proofpoint-GUID: KtW1b-wldqZJ9qkg-buRVAbfJL4ytuM_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_01,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0 suspectscore=0
 clxscore=1015 spamscore=0 adultscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602240100
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267876-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 97063186E37
X-Rspamd-Action: no action

On 2/23/26 2:39 PM, Srinivas Kandagatla wrote:
> For some reason we ended with incorrect register offset for soundwire tx
> controller reset and the regmap register max was also incorrect it was
> 0x1000 instead of 0x12000 which is full register range for this IP.
> 
> This was somehow compenseated in DT reg property which got it working so
> far.
> 
> Fix this by correcting the actual offset and max registers as per SoC
> documentation.
> 
> Fixes: b076b995e225 ("clk: qcom: Add SM6115 LPASSCC")
> Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/lpasscc-sm6115.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/clk/qcom/lpasscc-sm6115.c b/drivers/clk/qcom/lpasscc-sm6115.c
> index ac6d219233b4..47adf4de2cca 100644
> --- a/drivers/clk/qcom/lpasscc-sm6115.c
> +++ b/drivers/clk/qcom/lpasscc-sm6115.c
> @@ -35,7 +35,7 @@ static const struct qcom_cc_desc lpass_audiocc_sm6115_reset_desc = {
>  };
>  
>  static const struct qcom_reset_map lpasscc_sm6115_resets[] = {
> -	[LPASS_SWR_TX_CONFIG_CGCR] = { .reg = 0x100, .bit = 1, .udelay = 500 },
> +	[LPASS_SWR_TX_CONFIG_CGCR] = { .reg = 0xc100, .bit = 1, .udelay = 500 },

So after taking a deeper dive, we currently define CGCR "resets" with bit(1)

The CGCRs ("Clock Gating Control Registers") have:

BIT(1) HW_CTL
BIT(0) CLK_ENABLE

so by ""asserting"" the resets, we really put the *clocks* in HW CTL mode
(that's why drivers/soundwire/qcom.c only ever calls reset_control_reset()
and during "configure"-type sequences)

I think for not making a mess out of backwards compatiblity, we could stay
with this model, but we should def write it down somewhere..

I don't know if we ever need to manually assert CLK_ENABLE from Linux.


Now, interestingly, msm-4.19 techpack/audio has this hunk:

/* SW workaround to gate hw_ctl for SWR version >=1.6 */
if (swrm->version >= SWRM_VERSION_1_6) {
        if (swrm->swrm_hctl_reg) {
                temp = ioread32(swrm->swrm_hctl_reg);
                temp &= 0xFFFFFFFD;
                iowrite32(temp, swrm->swrm_hctl_reg);
                usleep_range(500, 505);
                temp = ioread32(swrm->swrm_hctl_reg);
                dev_dbg(swrm->dev, "%s: hctl_reg val: 0x%x\n",
                        __func__, temp);
        }
}

which clears that hw_ctl bit

Konrad

