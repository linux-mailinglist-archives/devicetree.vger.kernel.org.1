Return-Path: <devicetree+bounces-217870-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C070B597A4
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 15:28:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B30D44E7617
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 13:28:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35DF13128C7;
	Tue, 16 Sep 2025 13:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oEUISKL4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DECB313E3C
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 13:28:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758029316; cv=none; b=ZOiN3P3oaohEGtWc3BDj4j5+KQ9so6h2HKMMAKn084fC2+dssXOJRmZee0JOxMl7/k3aOo22Wv0Z2gLSedUjF75/hKufI6h5ijG0NzSylOPUzJiV/ZNkn1NqANTKC6jOEihjBP21i+NPcufknw69HdP2ySnQmOpwhZqjmJSTtWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758029316; c=relaxed/simple;
	bh=cNZmh6AjGmVuI6dqRdL9kt7zMECo7WrVHLth+4kAagU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=h4r4CNvjYcuuR7q+tgdN+NGMSP0fsVq19Fd5kMnU32qUm3PX2EWtvg8UwLLJ7s6sxCG0Wr4/0ECnJni4UbPpJMFm18XPJWmsBKy+sHWGKqkF9rAOmATAd4Ej1gV7BPBNEGhJzSLyR8aweMugvfJp153UfdBUQyn9zCiEUT7s1/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oEUISKL4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58GAMqrX020727
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 13:28:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qcPEY4Ke5nuiKZr0aJIk8Q1LmBCWPFe9PnpH5t+9CaA=; b=oEUISKL49KqfUR1U
	8PCy5m5higQofpGx9VHECZMaj8nB+FJOkkuh31hJWM8XCRDmEFOlAibaqMvNWBTd
	wmrILNTTL+odLqbQfbvloT28uqO//mJuwyRgZgIqjq+V3HCvScapRN3M16xYUGBj
	ESp9IweAid/xSkHjYwfnLiV2c5nfs3kqwXel4uJgpZGNpIOVCrhf3Pr9XXUBA337
	FKAyrOrGYihzujZeMp9ll1RYmOWkrowx88eICRN+WBmrtZjcJoDPGvrJdBDvFrhs
	LbU4k+wyQ1sn7iJ2f+Ooyysy+tBfCpC6EbjOdUHcstwmcFtg179M+jc28kSsElCG
	tIP8zQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 496da9dc91-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 13:28:31 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-770c244009aso64420606d6.3
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 06:28:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758029311; x=1758634111;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qcPEY4Ke5nuiKZr0aJIk8Q1LmBCWPFe9PnpH5t+9CaA=;
        b=BbJqzg7C6CjGVZ23PswyO7qFQiVgMenfOeDQuqzuURdJU+62PM1+us33iaUTYk4q8Z
         aXDGdym4A0THB+7+IcnYTuGaZk8e3AgBWIxmWjlyPwyaid7ikpOt3/MIzI/OI1iZfw26
         DVBoNzXXSuxypg5WJNCC3PdYbiTlFG/f985r/ZDkiancxuwR7S+c9CbOVXxHzBauS2EF
         urhSXOkBkiI6zfCIYgJXONqnXnRFxnWAfkTmxLpNC3I1weV5z4bumFzmez+B8MxxwnBE
         YdOCm+uYeh3uVcpqh/DN6KfcaEjs3Gr2sgau/Bys4Cb5t/kVTqdEXTccEm/MpMRP8Pfw
         78fQ==
X-Forwarded-Encrypted: i=1; AJvYcCXNpY/29H5Rq27OKfzApa3Boa8zi9CnoGENO40Vi2pncCTUag8YBNw/D6AQdJxQEN3wcBKp6Mp80BsP@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2CIBzvHQ8h6X8l8OUxW2UKR8jjj9rgNt+BjcCh5Oxl+EUrjTT
	IrjU90ZUKMtKFcwCAQ/aPDqj53bxIwq3SB1FhFEl4+COWX76xrITE6RIesq7+Hfv4+kkti9g6IS
	GUgk+5F92f/9Dr0CFPhTM9FbRg7qcJK0r6m8yuGbZowmJxX/OvbtsJyXkUL0n5A8N
X-Gm-Gg: ASbGncsyUY3vbfEgcalEu2kroknDXRzoLjeAtdU1UhEZKnRIF+J6MOiATsP/zu9K5Po
	lirP3U/RiCDs5I/Ahz07nst17MdT7Q6B3DmX+iwpMsppgR3pFGP5gHk9CUgJPnpIFfzJJVJ6k5W
	HVX567fER5988kWFlBvztoVeYqaLeKo9gHH7V1NsDMJirsThlew2Ul6HaByQlWyeqNtogVsbX+o
	2dUA9B2a3A2pOyfDvkNZiiqesQpuk+4W6Gsc8DTbq0biU7ttCyIfKUQ/a6tqZs+OECiL5uMHO7p
	nsBDEBVySXkImV3eOXSjqcRNnTtFCCQVxHoziZzoUA7ncgYjcyb35pEKq6x9ys54Ixk=
X-Received: by 2002:ad4:5bc9:0:b0:70d:6df4:1b21 with SMTP id 6a1803df08f44-767c5fbea36mr184871786d6.62.1758029310775;
        Tue, 16 Sep 2025 06:28:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF4K6xfkI1Ksw/7b17XodhPiyVnLomocyJrvt2hEYJpdLNG4U0tk9auJ0DVkHvIe0632tInog==
X-Received: by 2002:ad4:5bc9:0:b0:70d:6df4:1b21 with SMTP id 6a1803df08f44-767c5fbea36mr184871316d6.62.1758029310240;
        Tue, 16 Sep 2025 06:28:30 -0700 (PDT)
Received: from [192.168.68.121] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3e9a591a41csm11531787f8f.7.2025.09.16.06.28.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Sep 2025 06:28:29 -0700 (PDT)
Message-ID: <7f0c54a3-642a-4516-8f9a-3c10f5e3b8a6@oss.qualcomm.com>
Date: Tue, 16 Sep 2025 14:28:28 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/4] Add PM4125 audio codec driver
To: Alexey Klimov <alexey.klimov@linaro.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, linux-arm-msm@vger.kernel.org,
        linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        christophe.jaillet@wanadoo.fr
References: <20250915-pm4125_audio_codec_v1-v4-0-b247b64eec52@linaro.org>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <20250915-pm4125_audio_codec_v1-v4-0-b247b64eec52@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=M+5NKzws c=1 sm=1 tr=0 ts=68c965ff cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=GUb2KgM1ivsW4YjGMDAA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: DCqc-Z-4qHoHARCRmCIlxVyZ5nBVviJX
X-Proofpoint-ORIG-GUID: DCqc-Z-4qHoHARCRmCIlxVyZ5nBVviJX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE1MDA1NiBTYWx0ZWRfX4JCY4PrBnskq
 ZPOHna8Jaa54NRyUHwpYTzEYUzJAk5jdeXwWouHzM1rznxNNG8Av9Tcp+Okb+k88H+aZ2SSx5ud
 RBCw2r4LveID+ihxwSMKsRkQxFbujxJPvydyXKerr4hz3Vgi2y2uISLIYa65GK9WiKJ1xeTTKp2
 qxOm3xciKIJ8KRQZIDxdwqJXkMRd0oRXrvOCotQhhey7kBBsJQSFIL3gTQAdEs0lwRs63MkEXxG
 BBa3mpf+xpREN0vQ1DDLUTaNoEuAl2dW6xy6w51ZU4oqohYAwl9GcfgrmHYpZeC1EMPEypZs7e4
 NbDzhwgFP0Rinob4xio686w+26ydsQonfBGgjt9eYPoGpHaBcSsoNp92Zwidf2tEK8ILEAfRCnh
 +0v3a6LV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 phishscore=0 adultscore=0 bulkscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509150056



On 9/15/25 5:27 PM, Alexey Klimov wrote:
> PMICs like PM4125 have in-built audio codec IC. The series here
> adds support for this codec driver: DT bindings and codec driver
> itself that consists mainly of two parts: soundwire devices and
> codec part itself.
> 
> This audio codec can be found on platforms like QCM2290 and
> on Qualcomm QRB2210 RB1 board.
> 
> We are working on this together with Srini
> (srinivas.kandagatla@oss.qualcomm.com or srini@kernel.org).
> 
> This driver also has a bit limited support for concurrent playback,
> since line out path is connected to left input channel.
> 
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> 
Thanks Alexey for these patches,

I have now tested this series for headset playback, record and lineout.


Reviewed-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Tested-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>


--srini

---
> Changes in v4:
> - clean SDW ports/channels as suggested by Srini;
> - Srini implemented refcounting for global mbias (we didn't manage to make it proper DAPM widget);
> - patch for qcom,spmi-pmic.yaml moved to separate commit
> and "contains" is removed there;
> - rx_clk_cnt removed;
> - HPH{R,L}_COMP kcontrols fixed;
> - removed unneeded kcontrols (LO Switch, DMIC Switches, MBHC Switch);
> - removed "RDAC3", NULL, "RX1";
> - pass dev pointer to pm4125_get_micb_vout_ctl_val();
> - Link to v3: https://lore.kernel.org/r/20250814-pm4125_audio_codec_v1-v3-0-31a6ea0b368b@linaro.org
> 
> Changes in v3:
> -- added qcom,pm4125-codec compatible to qcom,spmi-pmic.yaml
>    as suggested by Krzysztof;
> -- added braces around if-else branch in pm4125_probe, removed coma in
>    pm4125_slave_id[] as suggested by Christophe Jaillet;
> -- slightly re-ordered header files in pm4125.c;
> -- reworked how driver deals with regulators after Christophe Jaillet
>    noted that it is broken, devm_regulator_bulk_get_enable() is used,
>    it looks like there is no need for regulator_bulk_{disable,free};
> -- PDM watchdog irqs are moved to separate (new) widgets
>    as suggested by Srini, therefore audio routing and events for
>    HPH{L,R},LO and ERA PGAs are changed;
> -- extended pr_err() msg in pm4125_get_micb_vout_ctl_val();
> -- small styling code adjustment in pm4125_get_compander();
> -- added/reworked pm4125_bind() to add error paths
>    as suggested by Christophe Jaillet;
> -- removed of_node_put() in pm4125_add_slave_components() after Krzysztof
>    pointed out that of_node_put() is out of place, it looks like
>    of_parse_phandle() gets the node and component_release_of() will
>    do of_node_put() on dev release so no need for of_node_put();
> -- Link to v2: https://lore.kernel.org/r/20250711-pm4125_audio_codec_v1-v2-0-13e6f835677a@linaro.org
> 
> Changes in v2:
> 
> -- added rxclk dapm widget, fixed/changed RX1/RX2 widgets;
> -- added comment for pm4125_wd_handle_irq();
> -- registers access permission routines have been reworked;
> -- changed pm4125_sdw_* functions to static inline;
> -- cleaned a bit pm4125_{rx,tx}_sdw_channels;
> -- got rid of most of hardcoded magic numbers (for the remaining regs+values I don't have documentation);
> -- updated commit messages;
> -- pm4125_tx_sdw_ports has been updated;
> -- removed of_match_ptr() and OF ifdef;
> -- removed couple of pm_runtime_mark_last_busy() calls;
> -- removed swap_gnd_mic;
> -- removed __pm4125_codec_enable_micbias_pullup();
> -- reordered sequence of calls in pm4125_probe() to make it a bit more logical;
> -- removed excessive regulator_bulk_free() and in error path in _probe();
> -- re-aligned for 100-chars length;
> -- removed of_node_get(), replaced with of_node_put();
> -- corrected some dev_err() messages;
> -- corrected some comments;
> -- removed legacy "WCD" from stream_name, replaced with "PM4125";
> -- removed null callbacks from struct wcd_mbhc_cb;
> -- removed "HPH Type" and "HPH{L,R} Impedance";
> -- pm4125_codec_enable_micbias() has been updated;
> -- pm4125_micbias_control() and pm4125_codec_enable_adc have been implemented;
> -- pm4125_codec_enable_dmic() has been updated;
> -- cleaned struct pm4125_priv;
> -- some rework to pm4125_handle_post_irq() and pm4125_regmap_irq_chip;
> -- updated Kconfig+Makefile (to make things be in sorting order);
> -- new patch: adding new files to MAINTAINERS file;
> 
> For dt bindings:
> -- I think all requested comments from Krzysztof were implemented;
> -- squashed qcom,spmi-pmic change into previous patch to avoid warnings on dtbs check;
> 
> Not done:
> -- Mark suggested to look at reimplementing this as a child mfd device from
> MFD PMIC without device tree description.
> 
> - Link to v1: https://lore.kernel.org/r/20250626-pm4125_audio_codec_v1-v1-0-e52933c429a0@linaro.org
> 
> ---
> Alexey Klimov (4):
>       dt-bindings: sound: add bindings for pm4125 audio codec
>       dt-bindings: mfd: qcom,spmi-pmic: add qcom,pm4125-codec compatible
>       ASoC: codecs: add new pm4125 audio codec driver
>       MAINTAINERS: add Qualcomm PM4125 audio codec to drivers list
> 
>  .../devicetree/bindings/mfd/qcom,spmi-pmic.yaml    |    6 +
>  .../bindings/sound/qcom,pm4125-codec.yaml          |  134 ++
>  .../devicetree/bindings/sound/qcom,pm4125-sdw.yaml |   79 +
>  MAINTAINERS                                        |    2 +
>  sound/soc/codecs/Kconfig                           |   18 +
>  sound/soc/codecs/Makefile                          |    8 +
>  sound/soc/codecs/pm4125-sdw.c                      |  545 ++++++
>  sound/soc/codecs/pm4125.c                          | 1780 ++++++++++++++++++++
>  sound/soc/codecs/pm4125.h                          |  307 ++++
>  9 files changed, 2879 insertions(+)
> ---
> base-commit: 590b221ed4256fd6c34d3dea77aa5bd6e741bbc1
> change-id: 20250626-pm4125_audio_codec_v1-02ca7a300ddc
> 
> Best regards,


