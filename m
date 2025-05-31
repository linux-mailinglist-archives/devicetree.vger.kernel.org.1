Return-Path: <devicetree+bounces-182000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D5CAC9B06
	for <lists+devicetree@lfdr.de>; Sat, 31 May 2025 14:35:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 699E87AE1AA
	for <lists+devicetree@lfdr.de>; Sat, 31 May 2025 12:34:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A39C23C384;
	Sat, 31 May 2025 12:35:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="R5wT/oTZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8726923AE60
	for <devicetree@vger.kernel.org>; Sat, 31 May 2025 12:35:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748694921; cv=none; b=BS9EZoinEv1cPdakZ2It7OIqXC8XJZv1TEm0N3vRTTVxpo8+zfQOfmRiXeXA0xtrxB/Erei7a6XI4VUppxbndPtZTDw3V7CLWHkYxX8iqg72UqY77kUO1DTvwjHh6n+2YDKPNTEJSQ7lwzyyUYhwJP886vRbc3YaVNChWiG+2bQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748694921; c=relaxed/simple;
	bh=fcsNL8Jr3V1Z+L+0UjZINlA1Qo0B6Y1X6uk25v4J7ZI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=J1c6CVyB8o8LJl/NGY7kGNiB9ZThz93ezhQYL5aZFACvLiyGSrqtIipGC6suvvRybAH9qVcTbuA/Hjx5ZdlJRrQk5g8FaEiZFT6lRE+ZVHOwRNz+oZk94sJxPCB8EZflj0mouEUDvoSaHOrztKmnp8fGstEA4hrKWCT0TjHPE3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=R5wT/oTZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54V6LUMC010783
	for <devicetree@vger.kernel.org>; Sat, 31 May 2025 12:35:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9S0yvnR5M8oQbjjOZBfaKlPYmTY49vYzeIuyHaPRtpQ=; b=R5wT/oTZ+k/atVwz
	akac9bkVfTDUZ0s9t2yQ3edFAlChnAhVDdzYFDpLJbGHP3GDJ9BIoA9rBujwqOmb
	t/9O2rFJFBsxlT2lv2AATzfJalvE4xxUd80WmBfCCcSaiOWtncVAFEDlDJU+MrUD
	PgzzWKp5gom8WA92G4oL7hFIQie0hY6MLsDyn2eq526obuxsXTMgAlQoRuRmdfSc
	vp22AkmjLYD1+OCakBdTidTiKM18e8vipAhs3v8hL7XFf2qm4Pdz5e9YgYh6ng+L
	3MiHm5UlW/6DqbsTCIzjYxTI+ZCftEg6C34xc5xmIHP2d+DWL485Zbd1xh9pTdLl
	BQxXcQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46ytj0rnmc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 31 May 2025 12:35:17 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4a42e9c8577so7767541cf.0
        for <devicetree@vger.kernel.org>; Sat, 31 May 2025 05:35:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748694916; x=1749299716;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9S0yvnR5M8oQbjjOZBfaKlPYmTY49vYzeIuyHaPRtpQ=;
        b=YoHFtE9W9U4OnOQ2K9biYxqZSpb1ovxtsj/lLPEYh723WbEJkT49h+6DXs+JHs5K3t
         P2BpEHlBFL58HhTol6C23YI/u0ax9oBPHZma5YBiQP5c7t7eBDoFh8Rym/0ZaZmSrTx1
         MTV5wkFj0yAq43DKyhppvID7MkBDGFdCOUuZDz+YmSMSEFUe5Ji/qU1Xe6sHzGjmalVi
         iwnME99r3eVED1OoxMvxIbHp5C8vAVhvtZ59sz24jaCKhIKq8i6hThojuWknQTTaWKbR
         4ckEhVemvohzdIASTWCcsksPmIzRiCFxusGo3RyUnKwAjJ8hAVxqB9koKA8qhfs59HBK
         7P/g==
X-Forwarded-Encrypted: i=1; AJvYcCUaV/wp4D8zyIlC2KU2WuWNUEY/ygo3L8Ma9lVyOycOOcEyyLPoHeVDWreMaazgcD/sNq4/Ftra5D1G@vger.kernel.org
X-Gm-Message-State: AOJu0YzuP6boTSH/WMVWhpAnFFARcvc+U16XE7kL5wnVUCe3rgiDltJ4
	5Myl47kDcRKsByLfK4uynIdZ/KPsS0a513qaojBXYSKsiP9jul9LlBvwTK5PyMqi0YsYmVFmsra
	QwjGu7Uw+J6GLX5/S0hPvmZmPYii6sIIKxM2BGcWF8a4GWwkmFO/zTV7hgLzDF8i1
X-Gm-Gg: ASbGnct7vWye4zsCNuW/Zr35U0F8NAKKYAuygoEGq3uy5JKiKzE19LfknuiI4MjEZ6Y
	T+FXbFmyuth4MblZ2kc8Y2u3Zyn3p3GXIjXTeNAY4TbNQyqXcQDfA3h2x/ltDiC78JCdPZjGGhB
	2zmxPYnNZpA+8zGQKioOd5fmpSZzETyTNufBGEFd+dyIhvo4OXzMhN/3UzDAX0wr+Wfkpy7CP6+
	cW0hymQMetStf2h69u+O/LWfsUgQfsciuVh5cjT99ODcc0vVQymavDdIMpoyIUtc+ycrCgo8zMg
	O/9WV7ErJkuh03ja0QhJfhsc8SIL9DG3ESNit6NpKXs8EplsYvTxuvXljfC+xGKlBg==
X-Received: by 2002:a05:622a:1995:b0:47a:ecd7:6714 with SMTP id d75a77b69052e-4a44319ad30mr35732941cf.9.1748694916344;
        Sat, 31 May 2025 05:35:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGAFHOKZwSa7Oj9a9fuVNjpeDyKERIwciylzFXlOnRCQf2AWDWhuEfkezhvglK3hxxCoL2fQA==
X-Received: by 2002:a05:622a:1995:b0:47a:ecd7:6714 with SMTP id d75a77b69052e-4a44319ad30mr35732611cf.9.1748694915801;
        Sat, 31 May 2025 05:35:15 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60566c7332bsm3179441a12.35.2025.05.31.05.35.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 May 2025 05:35:15 -0700 (PDT)
Message-ID: <43581d09-4e30-42bc-9c5f-9c40f5d2cb39@oss.qualcomm.com>
Date: Sat, 31 May 2025 14:35:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 7/8] arm64: dts: qcom: qcm6490-idp: Add WSA8830
 speakers and WCD9370 headset codec
To: Prasad Kumpatla <quic_pkumpatl@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org,
        kernel@oss.qualcomm.com, Mohammad Rafi Shaik <quic_mohs@quicinc.com>
References: <20250527111227.2318021-1-quic_pkumpatl@quicinc.com>
 <20250527111227.2318021-8-quic_pkumpatl@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250527111227.2318021-8-quic_pkumpatl@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTMxMDExMyBTYWx0ZWRfXwP7eblgQdVB/
 ta9iYbVBtECEKRD53qUTFfPHF6xKLNrD0QgjhiSwde0GSZeljVb8efq5Oq4DdIs7uYuohKL/JXo
 ziuWsQcu5gzimjX+Letytm7lj1XHuhfKhIPBoiPdFWxRHfZbyGcj0cSuQGXJJbdo/YlmrT2vd4q
 Abn49r5ZSgVNOxzh6c4cOLcMqPwD34Q5XvD5WYs54qsgLF1A4z2NiBYu4xpZ4c0RvGnuNxAMBp/
 FTRGTjgEIDRQB7dIABRHuwYr4NwcN+BaftMh+mxF12YuZUhXhC3Xfym0K4GpG/2evdBzZV++k2H
 x1DkUYflvNoUsscLs6R4HEdeecBlfjCji2uI8PN729QsZ1XOPf5WC9pE2v7kmc1d34gMf7KYbDY
 T4gL2yuiScPSuiQ7o9CBDwn76Z9zSKjKdbI5FIiU4Z0lqlUbcU+o9JXxjbke1J1kS6KzeCH6
X-Proofpoint-GUID: 9fqbLbn7dBUQn99GOTiUDt4C_4WxTb4-
X-Proofpoint-ORIG-GUID: 9fqbLbn7dBUQn99GOTiUDt4C_4WxTb4-
X-Authority-Analysis: v=2.4 cv=dc+A3WXe c=1 sm=1 tr=0 ts=683af785 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=7yl-E-j_GsxE4UPiD6YA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-31_06,2025-05-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 mlxscore=0 bulkscore=0 suspectscore=0 impostorscore=0
 clxscore=1015 mlxlogscore=798 spamscore=0 adultscore=0 phishscore=0
 malwarescore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505310113

On 5/27/25 1:12 PM, Prasad Kumpatla wrote:
> From: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> 
> Add nodes for WSA8830 speakers and WCD9370 headset codec
> on qcm6490-idp board.
> 
> Enable lpass macros along with audio support pin controls.
> 
> Signed-off-by: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> Co-developed-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> Signed-off-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> ---

[...]

>  &uart5 {
> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-audioreach.dtsi b/arch/arm64/boot/dts/qcom/qcs6490-audioreach.dtsi
> index 542a39ca72bb..2e75e7706fb4 100644
> --- a/arch/arm64/boot/dts/qcom/qcs6490-audioreach.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-audioreach.dtsi
> @@ -29,6 +29,30 @@ &lpass_dmic23_data {
>  	bias-pull-down;
>  };
>  
> +&lpass_rx_swr_clk {
> +	drive-strength = <2>;
> +	slew-rate = <1>;
> +	bias-disable;
> +};
> +
> +&lpass_rx_swr_data {
> +	drive-strength = <2>;
> +	slew-rate = <1>;
> +	bias-bus-hold;
> +};
> +
> +&lpass_tx_swr_clk {
> +	drive-strength = <2>;
> +	slew-rate = <1>;
> +	bias-disable;
> +};
> +
> +&lpass_tx_swr_data {
> +	drive-strength = <2>;
> +	slew-rate = <1>;
> +	bias-bus-hold;
> +};

All other DTs that overwrite these pins seem to be setting the
exact same settings.. And given this pin is connected to an on-SoC
peripheral, I think it would make sense to consolidate these in
sc7280.dtsi

Konrad

