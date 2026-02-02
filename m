Return-Path: <devicetree+bounces-261807-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YHI8I8uXgGnL/gIAu9opvQ
	(envelope-from <devicetree+bounces-261807-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 13:25:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 29981CC55F
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 13:25:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 09125302C6FD
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 12:23:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D8083659F8;
	Mon,  2 Feb 2026 12:23:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bl+Cx+EW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OpFBcRrL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF3CB365A10
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 12:23:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770035009; cv=none; b=qPdVXJ2FUi1ZQ1v5uXsU7oBhJRd61LUm2mAlzMhmUFv0SXBD54tD7cS98Uwo2uMUesibEUZo2sKWswRPJWJVwwaqL481FApJHXBs0cQm9h3BO2PNoY4JdBS9kWuhsnb6RIZ7x3hph865zS/etMM8a9jtngJgdBJRYw9ZzczieDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770035009; c=relaxed/simple;
	bh=+DKcwC7NTyCA/gl/ZDQxs8wO8JKKEH25qMtNu7FO14w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=baUooY/nT6XuEGgd6TsF+tymkbErCJg4fAwnN2RJHABKyvSpPOnxtw38lBwrjT6TYsHzyGbMNHno7m9uinUcCRmUaBU2JQ6KNAhKwuwspB3m69+kENpL9VQ0vWuFFbrrMqwK5eWtAgQ//sVXHc5KGxbk6WQKmVXyf+uVC8w47NQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bl+Cx+EW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OpFBcRrL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 612B4Cox2848510
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 12:23:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	r0UJBOOi/kAh4rFVu3QvP+gG227MJiiG8UbKLGyofKI=; b=bl+Cx+EW0tTwB0Ky
	TN4KbkMMUBLdNfUxhSlRcTV/+Qnxpb5LcZ7ozrdhUuKtDcrQGgN9n8srBhg12TcT
	fn9uYlhsCo/gFBiYKWPhF7cZsXwDfCs4IfYFeQmQwdf5tTxueIbNxSbcbx6iTY7I
	FZkhCTEcSnV6WW2mDfc2ZpCLSpCbj/4vtBjVrinhkO97W3Wp3c0k/2ict3YRU9D7
	OyhQugSlwJr/xj6AZ/X+hMw3ZhFMCnMJLzvM1uFlyKiXEgu+TpoBTxtKB2yys+WZ
	7tLpiezSHP11+v4i47PZcJynj6cHIKXXgl+hIEOIdZVpzrKWVoOwuqygeGWR46eP
	/AHkDA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2tqtg6nk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 12:23:27 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c52de12a65so76682985a.2
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 04:23:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770035006; x=1770639806; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=r0UJBOOi/kAh4rFVu3QvP+gG227MJiiG8UbKLGyofKI=;
        b=OpFBcRrLBm5XgX2PKzmVaLxWC2Fee1K9c1X6ppE7Enc66oqWBcoR99/mdJsyvCOYoe
         hcyfmhD0DJrlixJkY2+heh3cruoZ2/pSL7IpkRLM1BncE1xYQp58dZu0yEBvqix/wqyy
         DM9JFxEE5uYudT+M3dveLhCm/rUu7Ct/+dHwzmHFhJvqjLGmmX37kAIKnFGp33nWUoZF
         2MA+ZfI1grZvwHh/2xpitAty5TIqlhQZpMxrvblAqUFNsMnDousKT3XWOQ26j92oeu4y
         EqxqN7df2a55XdnEYpRVu+uNzp4g1xhXd/fp+T9YHta/+6AfFKCOpFyQHA/My8UiSVFi
         6MlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770035006; x=1770639806;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r0UJBOOi/kAh4rFVu3QvP+gG227MJiiG8UbKLGyofKI=;
        b=jiBbVNBmFBLBxSlOMm2JthqGrscduUk9itV46bkmR3KCKXUi8onw6/QWobiBlb61w9
         EZWfjPd9gPLDOTPN7jDirClUscIDbyA/0mw6YVJkGyr9V8R4ogRp7OnN5hfznHfxEBYS
         36wVHcy3hfCsWqEOwh+ZV3W9ycA9xvRNlsUxba+fLWpEUkfjF/4mMw8uS/Us+VSZMGJH
         YvVbJiVOGlrokYbhluYCz6Nw4HA0UiuQMDrm33BKnf9C9dO7ICa8aY4BV2PIayIJR6za
         5KS5ds1eYoQ1zz1SxgVV9cvCfdYLgjIFyEWyU+iw38rrAPuAnE+vV3qwzRsixM4T8hfP
         EEbA==
X-Forwarded-Encrypted: i=1; AJvYcCWscIUtB5keOxcN/55nn9WYnMifxBWj9Aedi4awORgLkQc927kEUxFXUUCs6PH2TFxbLbz1Fhm/zATy@vger.kernel.org
X-Gm-Message-State: AOJu0YxB8o7Ht4bieRCFagYmYQv1pyd0vDFWrXIUtOh8Xj7GAkj+GwGP
	IgwfG6NhXwxYLlJ3vMFmGuTIwsM7NfAINIL890MxxDwrJgeAkpLUWd57g+Hy9yPxrRFYqMU/kiq
	47OW2bLT5wOZsyhJAtKdD/2cJWqUCmFae0h5cG0nDpqx/zxFwDemJza5sPOhq2sdO
X-Gm-Gg: AZuq6aLn9+4vMz9lDxC2RZogbyJmz/+1MVDYWb4lQ0SLjZD8X4v/7cjVY/bLO/0WAQ5
	kTgDu+iTvrRC97+FgerLBiu0A6mP9Hvn831Yn0kmRhrd8K37IUncXgiiSjAyqIwWfU31gjl4f6w
	LZKpXPGzFstlgYkHc/R/A2WSY3hyd/1sAmyM54qDn0FwE8uB5jIKXXEO/QIGwghzx3GMVxSfLjE
	n7g8Fgj/8He4ex9SVlrK0qUOEo0vpAwn0+kXU8skSiaJDbf9zNnxfavWe102wWr+oYamKoDOpVt
	DC8HA2ZFD3giwa6CH2OEuPuecOd/7TEX4i+tBMGWHgVGEchnVu657rP+0FrsTnQwh6QIIY5KMY0
	6dWIybeFsKk65wN890BMMD5btO+Z5OSIkMfMsgfDj7wlkIAK/hX7miMzleTbLelEqAkw=
X-Received: by 2002:a05:620a:45a6:b0:8b2:e346:de7b with SMTP id af79cd13be357-8c9eb229dc6mr1206559085a.1.1770035006181;
        Mon, 02 Feb 2026 04:23:26 -0800 (PST)
X-Received: by 2002:a05:620a:45a6:b0:8b2:e346:de7b with SMTP id af79cd13be357-8c9eb229dc6mr1206554785a.1.1770035005433;
        Mon, 02 Feb 2026 04:23:25 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658b4256a92sm7779349a12.5.2026.02.02.04.23.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Feb 2026 04:23:23 -0800 (PST)
Message-ID: <2a19de94-8a5a-4fd1-b15a-9b76ea5076d9@oss.qualcomm.com>
Date: Mon, 2 Feb 2026 13:23:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/5] arm64: dts: qcom: ipq5424: Add the IMEM node
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck
 <linux@roeck-us.net>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org
References: <20260130-wdt_reset_reason-v6-0-417ab789cd97@oss.qualcomm.com>
 <20260130-wdt_reset_reason-v6-2-417ab789cd97@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260130-wdt_reset_reason-v6-2-417ab789cd97@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=XP89iAhE c=1 sm=1 tr=0 ts=6980973f cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=o4o9nyK-Q1O9M6IKefoA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: yb5zAmK5gCrD9Z55G8zxqklSyfQsX6FF
X-Proofpoint-ORIG-GUID: yb5zAmK5gCrD9Z55G8zxqklSyfQsX6FF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA5NiBTYWx0ZWRfX2zcL7nNuHE3I
 OvIsgHPM6I8qfCLBSljwfF1GtX7ZdZYpW2aFaPc87TsyPLJnv/w8i+NPLtoPUNQTxakBW+ZeQcP
 5DFGDV8GzircNkNwMO+aZDopzz8JKR2A3VWEUQZTvokGDPZjQoOktssVoEZvHjlsUCPlsf6S4O2
 J+JFRJ5XDEglMZ89uK3zn/JSoAURRLtSQVQxV0BxZscLhBnv1xNg53J2F8lA2tOOLQRHldAMJ8Y
 BbtWuiBPUrs+0rbm9tL4BJZa1aqF+kMDQ+PVw+O8UmaZm+29zVSQ9etJW1Qd9m69SsXuEcjLqt2
 p73r1znCwO3e/ZuuVfCgo9yzxj7W5DYrSpBcs2eh5T+wSMqnq6KPsr2dHTTs69GYeNWhd5KE0co
 oS/FJnryRLrKs1QE+dsi27o/dEB5Ckrh9YMygx/76NqxxSzF7Oo5DWOBDAWSR6krRqaPo5HpDMN
 /L3A5SYq9YsSV6mYzqg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_04,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 adultscore=0 impostorscore=0 malwarescore=0
 priorityscore=1501 spamscore=0 suspectscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602020096
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261807-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,0.131.57.192:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,7d000:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 29981CC55F
X-Rspamd-Action: no action

On 1/30/26 11:44 AM, Kathiravan Thirumoorthy wrote:
> Add the IMEM node to the device tree to extract debugging information
> like system restart reason, which is populated via IMEM. Define the
> IMEM region to enable this functionality.
> 
> As described, overall IMEM region is 112KB but only initial 4KB is
> accessible by all masters in the SoC.
> 
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---
> Changes in v6:
> 	- move to mmio-sram and drop the Konrad's R-b tag
> Changes in v5:
> 	- No changes
> Changes in v4:
> 	- No changes
> Changes in v3:
> 	- Picked up the R-b tag
> Changes in v2:
> 	- Describe the entire IMEM region in the node
> 	- Explicitly call out that initial 4K only accessible by all
> 	  masters in the commit message
> ---
>  arch/arm64/boot/dts/qcom/ipq5424.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5424.dtsi b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
> index eb393f3fd728f0b2fc8cd93c849f8c170d76e312..90790f99f0597b63801d4e07b9b72cd372ad46d4 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5424.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
> @@ -697,6 +697,15 @@ ssphy_0: phy@7d000 {
>  			status = "disabled";
>  		};
>  
> +		sram@8600000 {
> +			compatible = "qcom,ipq5424-imem", "mmio-sram";
> +			reg = <0 0x08600000 0 0x1c000>;
> +			ranges = <0 0 0x08600000 0x1c000>;
> +
> +			#address-cells = <1>;
> +			#size-cells = <1>;

I think you may need to add 'no-memory-wc' too, in case someone uses
any of the sram functions on this in the future

Konrad

