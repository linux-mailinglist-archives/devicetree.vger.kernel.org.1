Return-Path: <devicetree+bounces-162067-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D8ACA76B3A
	for <lists+devicetree@lfdr.de>; Mon, 31 Mar 2025 17:51:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ABDA2163D81
	for <lists+devicetree@lfdr.de>; Mon, 31 Mar 2025 15:49:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AB8A214226;
	Mon, 31 Mar 2025 15:49:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E9nl8+23"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 572341DE4DB
	for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 15:49:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743436173; cv=none; b=q/UNzBccTB81rmXpNgxcAlB6OobW3gOgttcy2ImnixKZNfuNe4VAyVJ+/24wTNbC/lIYftLU8+NzxFDL6tFdDX7kSZTxVQLLaROSy9Wmj1wKAZQ8Fk9/Hpl3xsFAxw+E/pBReVcJWUF+RhIWdXjySjIOPXDBQCB4d42y7sjpbYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743436173; c=relaxed/simple;
	bh=IGBH4wxVg1pNnD/eSgoSpRXhf9gdVCfg02O/OGATn1w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ekiafpaEdYondd3TvS3ZvtvZloeFzlZh+QrqtRcZKW9AbNWknGv97DFrRwGxnSxkGf53qozrwym66g+RjJp69zPqFanCHijo+cPgPsCWvE207hW1aajdDNdhoJNwYCAxuqYNViN/Lh3S4j6LCjSxzhhTDCjVWwRQhmMI5Ot7Vrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E9nl8+23; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52VFCqgU023470
	for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 15:49:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JQfeCNQU3Vgxd6VbOxmW+SSNqYouK+Dr05GCEQnKu5Y=; b=E9nl8+23kNEbGNMH
	1LVghavU+TRhoX0mpA+RfdCuC5MrTua0XbHbzC69cSGa3I0z0LofjbZk3VSORqwl
	WB+Qve+DXY9RcSd62IeYtNYwweVWQ9scupKcgMBu5FvBBdqzxtCRxdnwcGOXpVmx
	rLMqbdEAPA/k88cQZl/FADk5gQ1/TeKSEfNGSv6HCJJRw8b4XRN5V0XWLClXXcFq
	Zu7ZUKryh5L7Ttz8DbZF86Hq2OzxUQmfi+0xhLIRDav+Rxp5JYPU6qji+fu2TP/6
	lj43xV4oQisj5aGdJ8Yt2Z7cgTxv1a5WDJXpnvWx9/vbJ+RHDcAoWKB81dXhbpt+
	eEio0g==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45p8xvcyjs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 15:49:29 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c549ea7166so726045285a.2
        for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 08:49:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743436169; x=1744040969;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JQfeCNQU3Vgxd6VbOxmW+SSNqYouK+Dr05GCEQnKu5Y=;
        b=PHVvCaejL93IkvvbqV4c33GvjEicnSoyrrxD2OfeIU3j4pvPbIQyg1yexE2OheMklt
         WKlA+2q2w93ijPNHJy0a7Jazm1PgfdhrvzmA4FBw1gSiRhkbWPLSpAwguvNpNJRJZ33X
         NJuq60IsWgHo9O5S2rPuoEOlyWe1a0kU3k5Lq83hAXFksNqaIQ1aVx2cK8oGVYvgXLA0
         aX+Gq4QMq9BEmmKw20TQh2K1t7us8bxJrxHJI76NRXefAGAZLam46AngTL1pk+JTSkez
         4C9nh7IQ1ggu6X6q4V8dY6a9rltiRwzzBpmvV9sG1iE/6a6KmyNSTmSowdJwS1OTJ5lQ
         6q6w==
X-Forwarded-Encrypted: i=1; AJvYcCUPGwIzxFbVu+4R/0B3xX2g7lSoScH+iIBzXTnyMJS3Vt87cQW8fExubKFttAhZZFHGBuwKsdR1vRjD@vger.kernel.org
X-Gm-Message-State: AOJu0Yxghgeb1kasE3oj+cCZAC0fWGErqTT3EMl96q7Z/0J0P6vMeOeI
	XdVOCCFV1dff1YmsQGa8TMZkPMqz1vHmu83TelH+6brQEiqokDyuCYpBn9Ix5eMoB2Gtbz7fl5s
	q+o/9H77HmHZdPG7Ht3Rc9ekC90RodpZpa9Sr7RzauKzdpV2bxHeFmwF0YpCp
X-Gm-Gg: ASbGncvpm8TDfvFFr5bJSFMAB7FBn6wAe/EGkUk6uyrCGdgYfLes4S9VOQT9qLh7aR2
	YG9ePvsABjxnY+hlb0AEdk20XpYvrqudgbiqZuwQAFfyMOdLLZqGNwey3TjE8PHPeqoAQ13yzB7
	hL5L1Lzwz6cFs1kA5PRlF0FgLymleCsgzJYAh8Soz1zVgT5Oo/cPvZv37UlJzct66BpsUnvgN5G
	JDaWE+SE6852++ls055nEQpRld2ccDZgVnCMDVS30RNxKJf1MP60LNNYBTz4lJ+hqesHzYI/lcT
	WTn6z63pU91PtE1D0c0qcVLWLTf0+ymKOzRUEWEti/EUjzxOOm2LtnBYWzXZiVwb3/g=
X-Received: by 2002:a05:620a:4105:b0:7c5:562d:cd02 with SMTP id af79cd13be357-7c690875665mr1327159185a.41.1743436169083;
        Mon, 31 Mar 2025 08:49:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEAFI3UMTVKl1f4Q8Z9ayeXB3UNVJ+jJ+IjQs7TXV+ypHv91zaFO4bVygk5ud+r/cnISXI9Fg==
X-Received: by 2002:a05:620a:4105:b0:7c5:562d:cd02 with SMTP id af79cd13be357-7c690875665mr1327153585a.41.1743436168664;
        Mon, 31 Mar 2025 08:49:28 -0700 (PDT)
Received: from [127.0.0.1] (87-92-196-151.rev.dnainternet.fi. [87.92.196.151])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5edc16aae56sm5773557a12.14.2025.03.31.08.49.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Mar 2025 08:49:26 -0700 (PDT)
Message-ID: <b4983b93-97fc-43ed-a41c-a44f90773062@oss.qualcomm.com>
Date: Mon, 31 Mar 2025 18:49:18 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] arm64: dts: qcom: x1e78100-t14s: add hpd gpio to
 eDP panel
To: Christopher Obbard <christopher.obbard@linaro.org>,
        Johan Hovold <johan@kernel.org>
Cc: Douglas Anderson <dianders@chromium.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Rui Miguel Silva <rui.silva@linaro.org>,
        Abel Vesa <abel.vesa@linaro.org>, devicetree@vger.kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20250327-wip-obbardc-qcom-t14s-oled-panel-v3-0-45d5f2747398@linaro.org>
 <20250327-wip-obbardc-qcom-t14s-oled-panel-v3-1-45d5f2747398@linaro.org>
 <Z-pJP4PMwPo3L3Og@hovoldconsulting.com>
 <CACr-zFA_oSySRnA2VaSQk2ND_AHeyt3v=RuPTbABPM7SYown6g@mail.gmail.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <CACr-zFA_oSySRnA2VaSQk2ND_AHeyt3v=RuPTbABPM7SYown6g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 0V-HCEEn_4PVI1WxWhrA8f1R5O_3nWcI
X-Authority-Analysis: v=2.4 cv=PquTbxM3 c=1 sm=1 tr=0 ts=67eab989 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=OTAToBYhIyEwkxHp7GKTIQ==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=3C20PiN8XUAt7dgb-g4A:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 0V-HCEEn_4PVI1WxWhrA8f1R5O_3nWcI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-31_07,2025-03-27_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 bulkscore=0 phishscore=0 mlxscore=0 suspectscore=0 spamscore=0
 clxscore=1015 mlxlogscore=999 impostorscore=0 malwarescore=0
 priorityscore=1501 adultscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2503310111

On 31/03/2025 18:39, Christopher Obbard wrote:
> Hi Johan,
> 
> On Mon, 31 Mar 2025 at 09:50, Johan Hovold <johan@kernel.org> wrote:
>>
>> On Thu, Mar 27, 2025 at 04:56:53PM +0000, Christopher Obbard wrote:
>>> The eDP panel has an HPD GPIO. Describe it in the device tree
>>> for the generic T14s model, as the HPD GPIO property is used in
>>> both the OLED and LCD models which inherit this device tree.
>>
>> AFAICT, this patch is not correct as the hotplug detect signal is
>> connected directly to the display controller on (these) Qualcomm SoCs
>> and is already handled by its driver.
>>
>> Describing it as you do here leads to less accurate delays, see commits:
>>
>>          2327b13d6c47 ("drm/panel-edp: Take advantage of wait_hpd_asserted() in struct drm_dp_aux").
>>          3b5765df375c ("drm/panel: atna33xc20: Take advantage of wait_hpd_asserted() in struct drm_dp_aux")
>>
>> Perhaps you lose some other functionality too.
>>
>>> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>>> Signed-off-by: Christopher Obbard <christopher.obbard@linaro.org>
>>> ---
>>>   arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi | 11 +++++++++++
>>>   1 file changed, 11 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
>>> index 962fb050c55c4fd33f480a21a8c47a484d0c82b8..46c73f5c039ed982b553636cf8c4237a20ba7687 100644
>>> --- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
>>> @@ -980,8 +980,12 @@ &mdss_dp3 {
>>>        aux-bus {
>>>                panel: panel {
>>>                        compatible = "edp-panel";
>>> +                     hpd-gpios = <&tlmm 119 GPIO_ACTIVE_HIGH>;
>>>                        power-supply = <&vreg_edp_3p3>;
>>>
>>> +                     pinctrl-0 = <&edp_hpd_n_default>;
>>> +                     pinctrl-names = "default";
>>> +
>>>                        port {
>>>                                edp_panel_in: endpoint {
>>>                                        remote-endpoint = <&mdss_dp3_out>;
>>> @@ -1286,6 +1290,13 @@ hall_int_n_default: hall-int-n-state {
>>>                bias-disable;
>>>        };
>>>
>>> +     edp_hpd_n_default: edp-hpd-n-state {
>>> +             pins = "gpio119";
>>> +             function = "gpio";
>>> +             drive-strength = <2>;
>>> +             bias-pull-up;
>>> +     };
>>
>> I checked the firmware configuration for this pin on my T14s, which
>> does not match what you have here. Instead the function is set to
>> "edp0_hot" which forwards the signal to the display controller which
>> already handles the signal on panel power on. (And there is also no
>> internal pull up enabled).
>>
>> We may want to describe this pin configuration somewhere, but that's a
>> separate issue.
> 
> Thanks for your review, I will send another version in coming days and
> drop this first patch (adding hpd to the T14s DTSI).
> 
> As a consequence I will need to add no-hpd property to the panel node.

No, you won't. There is a HPD line and it is routed to the DP controller.

> I will add a short comment about how the hpd signal is handled by the
> driver already.

-- 
With best wishes
Dmitry

