Return-Path: <devicetree+bounces-267879-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kGv9KfmYnWnwQgQAu9opvQ
	(envelope-from <devicetree+bounces-267879-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 13:26:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B70C186EF2
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 13:26:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 90D2C30AA026
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 12:24:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30704396D0F;
	Tue, 24 Feb 2026 12:24:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MprzHPvA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iSfrlqMU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E345A395DAB
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 12:24:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771935855; cv=none; b=iEzIFMGoFIqji6w0IUGs92nLSgiVseIZU1qs2vWIeUTph/cokd1GuPDgkFKTjnqD/i3WySUnZFilax8o4eTjm/M6u4doSXRYYsZJOg5PEzePoLe5TTE6EHklncFYs+RfaVBBJgkwHuozuk79NRNv5wPkeo0gmSMOGY0TywM2nGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771935855; c=relaxed/simple;
	bh=bTmr43BdPtnQel3ZtNlnujKGUg0Ca2H9aOeE5g/etK8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VhlJ67vybJO4S9oJvvf1TlibZBWImgraRrPubijhVf0Zi6HUCVat2FbOxdz+eIwxaxJTdDHRV5TvF7ICC08m27HO86MooO5eIgSrZ2lRjkKwOIT4SI12NeDocj55yCfuJ9xsuwmELysnafRAKmh4VaYu7I/DO3GS7HgU0dEVsrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MprzHPvA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iSfrlqMU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61OAFVOx2006500
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 12:24:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bN1o5+44eJsv48N4PPw9qTAcmAEf/hUsoOucZ+FPRXI=; b=MprzHPvAjg+HgcoL
	Oc73QWdAKn11zYvGbu7Tv8qQMLrex0M0aUHO/KHEA8uq8nQnc+SBZOBXiyS1Fgbi
	Qjsh0Qm9jYw3yWz3VLRzJ3dmUJHKx1WhkZ0ggakyOqQeGAdz/WNf+ydzUlqcHHX4
	BCQ8jKnfZPrmVgNYNUlAQRhiBa0tLdEx7wCnVYU0YOIYGlCchxrfx1EcPhOdFA+z
	Wa623MNcglwobldYpFa14iOVQcF08Si4MzMGzll6RZWr4M+Vju3k7TFmyr/UmAWo
	3hBMivMx2rn300GNNtPjB3nWqvDsnwAfDi06qX6xplugZ58DzKMUCXO0LmZMK41S
	GdiqkQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ch4569eg9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 12:24:12 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cb50dfd542so545498085a.0
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 04:24:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771935852; x=1772540652; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bN1o5+44eJsv48N4PPw9qTAcmAEf/hUsoOucZ+FPRXI=;
        b=iSfrlqMUOu0gBBDrcFBI+aFCc/SAOyxPqu8KOMxxVyR3oeQ4NU8imj3lassOguh78J
         lNHiBFnwfKBDa7We7rujNWMmUcucJ/vMVGPDcYQ4tm/pNwXm8dq9DdbDtwvfkDg9wPLk
         Elhd9y2lglQrVomK8POXkMRjBDL6zqE3LmkCtYwBUD+2OLqs/LJPuzuam8NIk3kCcb4w
         OVFoNBqbeQPK4fIJFXCdPvvkr40eVf3KFotqzXlD5pA2AftM5EUPqGNrfNzJ/BJWDMFL
         db6VPz+XxHUiz1z3J8p3c7gaB/phDbc+/m/PBeziQqYICEls0QHF6hxPMhrqQK5QDhuw
         LgOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771935852; x=1772540652;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bN1o5+44eJsv48N4PPw9qTAcmAEf/hUsoOucZ+FPRXI=;
        b=wCBAIsQr7xV3p378rYll4+j1G3bjuf14eVlMB/IILwBtwYul07PZdioPotqmb8Qvm7
         F/wRWuPh6Iei7K1GrMMk1A7USLAwsDOTFFWuG8myQ+rX4cbt2VVaUO5b0ULrhjT+8fmX
         bGTNMNUAdmmkoll4ezuCI/vst4F2RkC42UOD0h5HPMLRuuC9gmG8e1vP41Yvhu22NkbV
         pgamQufLImckrpOy8bWrIgu1gLTuywVMOu2xDjpRz1DfdKHwCEnwl1yLbjEdDDo63aOz
         hdfVK6CjQw21kbleyyuk2Mjo/Vm9VOjiFTx4I4kS6NNf5FJ6gGM8cLkwBPM4zGPjMMhU
         x4wg==
X-Forwarded-Encrypted: i=1; AJvYcCUPxoiIO0A2fyLpDnK63scJANxUglK/7T6IU/mXSJrUf596L75ccrLX/BvnrNviKfhNhiwBTFOUaZLF@vger.kernel.org
X-Gm-Message-State: AOJu0YzDyOtVVmYtWSv6XMRA40DQViHQuKOVcEDXipwEfQctm9TLtc6/
	XJblvslf8jXv9eYSJ1d1A0yWIkyKjPYmi2VKm/BubcY1gLDqZ2BgIugenpeydyEtsQsGdW9WMgf
	l2H3BseHnQZZk6CWHtc1YTZ8wqld/nm8RSvfMDlvyuXbKqgIPqQJecJz4pBsy4q4b
X-Gm-Gg: AZuq6aJDazYb4TQNrio/TS54i93lVa4WDXI9ULfz+steCH4LUJ/TLRGIYEGqJR/A9Yy
	YdC2zrRs/q70BrM4TcWp0qADKoyzliGvSr5qFAOjgqTfhBD4loriF3AnV072uRRlVbDz791wha8
	zJPYMnUW8NlF+XNmgNq/0kOwa9uq3mYZvewFMnLl7Q3uds11Ua/HPUyl7x6zu8RMTqozyTB5nE/
	7RZK0bGyTf4LazEnvVA2KUyoYIffT1nE0VX9FmGBv7VzUr2sbyY5VDHrc+txyEiK7qazpYDUUKu
	d0cDHrFPgixoNoFI3K8mkUUB+syxa49NAxJvrn7uUy5MnFjpTuoGjSgnnX8Tshzq/tXga9uwt4i
	nELFdbZE4TIYk8p66j2hAXJsIp4Uzs+LNP55UpVL53R+KtI6w73ldoUNcLVeLM85FwMzsoGf5iS
	MqqDg=
X-Received: by 2002:a05:620a:1904:b0:8b2:6eba:c45d with SMTP id af79cd13be357-8cb8c9c4163mr1143460685a.2.1771935852106;
        Tue, 24 Feb 2026 04:24:12 -0800 (PST)
X-Received: by 2002:a05:620a:1904:b0:8b2:6eba:c45d with SMTP id af79cd13be357-8cb8c9c4163mr1143457885a.2.1771935851673;
        Tue, 24 Feb 2026 04:24:11 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b9084c84c37sm414449166b.23.2026.02.24.04.24.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Feb 2026 04:24:11 -0800 (PST)
Message-ID: <91bc264c-5f5f-429a-9d0d-63928edc675b@oss.qualcomm.com>
Date: Tue, 24 Feb 2026 13:24:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/5] arm64: dts: qcom: agatti: add LPASS devices
To: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>, lee@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, sboyd@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alexey.klimov@linaro.org,
        r.mereu@arduino.cc, srini@kenrel.org
References: <20260223133950.221234-1-srinivas.kandagatla@oss.qualcomm.com>
 <20260223133950.221234-4-srinivas.kandagatla@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260223133950.221234-4-srinivas.kandagatla@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 093rgP_iCwX2msivhmQGuJV1p37sGaR7
X-Proofpoint-ORIG-GUID: 093rgP_iCwX2msivhmQGuJV1p37sGaR7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI0MDEwMSBTYWx0ZWRfX8S3/ubcbJ4h2
 4WWxi0ajSYd1g5r+b91AUiywlPhCPuoi7H3iwvmLrVCfyik4VSZSeixE8vvuYtzcHVEmYsZV4sf
 EtDxcXlc3b7ZT8hw4xsg6U1Z1g3SkqloYtgj+82cwuUdrADTYAD1Cd1urvK0jDiOcbMolaCYV7L
 kEVxkcLphETY6tYEN6SAh0ziVm3RcZVpdXob9PlILmvOaPGAYljxm01MIOOcIWL5rETkBu23Ap6
 PYHP2aTptg+WN7Y1/tJfH4euZ8uiMK0r4wh9h2I1+ePLjTfqdjHTyXJEy6Z64kTZwCo8lGbcGxO
 xOxnb04qwU5tKcvl+vQOgHFrOof6yMYkz8ImECKlOhmiS2Im685EAFz5SGv7ANnrUigK9mqESIb
 cBQHv9/m/2/Gao+SOnk14Lk5m0joAhHRYBSIya3JZxT1UhyiP2ma0LFaqGSE8QbcpBpWWyTq5CR
 kSY5ZulidVW4CnCHU5Q==
X-Authority-Analysis: v=2.4 cv=J8enLQnS c=1 sm=1 tr=0 ts=699d986c cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=VwQbUJbxAAAA:8 a=6H0WHjuAAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=qm79auVd1PL123FFa2UA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=Soq9LBFxuPC4vsCAQt-j:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_01,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 suspectscore=0 phishscore=0 spamscore=0
 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602240101
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
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267879-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,linaro.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.997];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0B70C186EF2
X-Rspamd-Action: no action

On 2/23/26 2:39 PM, Srinivas Kandagatla wrote:
> From: Alexey Klimov <alexey.klimov@linaro.org>
> 
> The rxmacro, txmacro, vamacro, soundwire nodes, lpass clock
> controllers are required to support audio playback and
> audio capture on sm6115 and its derivatives.
> 
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
> ---

[...]

> +		swr1: soundwire@a610000 {
> +			compatible = "qcom,soundwire-v1.6.0";
> +			reg = <0x0 0x0a610000 0x0 0x10000>;
> +			interrupts = <GIC_SPI 297 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			clocks = <&rxmacro>;
> +			clock-names = "iface";
> +
> +			resets = <&lpass_audiocc 0>;
> +			reset-names = "swr_audio_cgcr";
> +
> +			label = "RX";
> +			qcom,din-ports = <0>;
> +			qcom,dout-ports = <5>;
> +
> +			qcom,ports-sinterval-low =	/bits/ 8 <0x03 0x1f 0x1f 0x07 0x00>;
> +			qcom,ports-offset1 =		/bits/ 8 <0x00 0x00 0x0b 0x01 0x00>;
> +			qcom,ports-offset2 =		/bits/ 8 <0x00 0x00 0x0b 0x00 0x00>;
> +			qcom,ports-hstart =		/bits/ 8 <0xff 0x03 0xff 0xff 0xff>;
> +			qcom,ports-hstop =		/bits/ 8 <0xff 0x06 0xff 0xff 0xff>;
> +			qcom,ports-word-length =	/bits/ 8 <0x01 0x07 0x04 0xff 0xff>;
> +			qcom,ports-block-pack-mode =	/bits/ 8 <0xff 0x00 0x01 0xff 0xff>;
> +			qcom,ports-block-group-count =	/bits/ 8 <0xff 0xff 0xff 0xff 0x00>;
> +			qcom,ports-lane-control =	/bits/ 8 <0x01 0x00 0x00 0x00 0x00>;

I believe you'll hit the same issue as described here

https://lore.kernel.org/linux-arm-msm/DGJTU2TOFZR7.2MOU6I6J8GV4L@fairphone.com/

with both soundwire controllers

Konrad

