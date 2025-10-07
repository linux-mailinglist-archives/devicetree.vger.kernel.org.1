Return-Path: <devicetree+bounces-224180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3160DBC1614
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 14:39:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C87274F5652
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 12:39:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE5302DF156;
	Tue,  7 Oct 2025 12:39:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="deNIUuG6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72B212DF125
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 12:39:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759840769; cv=none; b=XuyCskLbIPGY1lYyFhIwmt8KIOsUUrzl5wnQcYqtfO8ERwWGp1iNfS7WaIC///ALhpPCq18083wYGBXT4h5KP2vESwM8b2yO68RojslMxUIPAnE6mlgBYCAQgNZCVo6eM6cXO6SZU5ifuBZF1/uEknWIsihpE9Exclfw9c5eU9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759840769; c=relaxed/simple;
	bh=UPnFCkbAAqYodYYvidAkc2Mw5hSlfS7wopk3IkQjvIY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YN0+4z9dwjz8yYvYGIy1boVXz42BMubmSw8OG/t0FVfP8QaGYv3nRAnTpUKwO+ZDn4PI47cwZeOLHGK9z3MyeBDMYQ9uCXce90dADaQWl2mQUdeDwXCye5qjlZ1mrw7gi0jvtMYLV3+xEnhMNgxBz5m6BHfzHDV/LvXQWdcJrJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=deNIUuG6; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 597Cbt07024872
	for <devicetree@vger.kernel.org>; Tue, 7 Oct 2025 12:39:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZrWyGE3gs9+GLL34onELkx++qF0tEM4y9SytX+wbbUM=; b=deNIUuG6MAaSiEih
	79Yj7xhMjsEva8COdIUzR3DRV2L/fgm7E3AiEFExXhnGZnQPmEcGj49XqoXHYeD0
	OSIqf6rMzFTdQwNpTW6lGZ7l6Ek7CZmVSf3EYzlHiL//MGbxZtvIzMSXW4+rmoQU
	oQLJUGvR1rxirkbUCyiOzPwja6p0qrH+3QmC6SDp+Rt2qAD0jDdgM3boVpYQUHba
	IN28eXrStO8O3aS9brbJXluFZ2OnuRBJrcGZOsT7pcKmt4XFu/a2atwa0Hcf0TTm
	ONbLovEQumn7FZ0oJEil0lIZxe1i61Y6yJ6tJbceuf0D/IlIaGGNKKuVIfASHsHN
	N1+4xw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49mg6aawey-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 12:39:27 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ddf2a2d95fso21832871cf.3
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 05:39:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759840766; x=1760445566;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZrWyGE3gs9+GLL34onELkx++qF0tEM4y9SytX+wbbUM=;
        b=kIyabrkMfbqBKXCiIpNenjtnvZun+3sYO68gUmLUM72RGatDI0C0UAyoY7csYtrCta
         6FZFbxNvdVgKL9UTJL0YL1WaripvqjOqTIp3c41+miqpVk2G8rnvI7n95q/+ZiEHK2yN
         snKkbYkLmFnXrwpG9gcH4PuVGe/ywmGAtV9fjR8tQIMG52VpeyqHPJZi3cvO/yaQCIkD
         z3buqzSVvOBl/Eq7BoB69aiDxVRoi1rAC7DOaWcs0HBLoK6z+emF8zQg4MxuTDrbQ6pQ
         woPV7eACJh1GKnU5wjrPKfDJRPAkNqnG93hSfsaPj2+KFdYtbkdYH28bSaZPWYV5ZkWV
         rXyA==
X-Forwarded-Encrypted: i=1; AJvYcCVIV/rKfWusvu3cB9u3+qljO+AsmZhCfNXWoTug/96gyTVQ+BHjjH+qluP+HGMA62Jwz7ngDsGKfYMn@vger.kernel.org
X-Gm-Message-State: AOJu0YxpAe9VTwyAdVU3axnfXjGTswXtTQmsCJE2sRwYp1NZjUcKWR7+
	ZvjyhuTMpq8N77RvSm7E4zJ7Ru0lWfZz/Y6gHHdZDNhZc2a9SS1w8bviOn+MgCM1q/qwJYN93RG
	jIOJ9e8N+kXKk6uOdkOjRF4A+EJMaVnITDI75nsRKk6TV6NXppnVzbE9hwiHfMpGs
X-Gm-Gg: ASbGnctQygSRsJYtso9DfQKbrogxX2MY1g/ul1RpKSSSHMpV/0IvGyVzlkondAb6M8v
	eD+AkttTBm8jvpvOC5e4zmSvL0yZE0XW3XSlQQbk2wsdn9PDRIEch3mCq4JVopoCiktNoG8PG2r
	GUhsDmgkehWkzd3TocrmM2TNw8xH+q5A/8gwZ/Ebfo3PW8frt5cmyEvYjs9yN3k8edcjfgFiNCu
	/9cE9GgotwnSySoN1lAHrfDXy55lUN0zDtz/YCnVoeOHxE8vUsRGfE7yXIdR/Pt6EPqSwn2lSkd
	Vb/Rr7z4TJR4CiqYTuWO5zENIPFlfmIaoKXUExamPVlQPxG/joRASn6fHGlhdlPHPLwrpTCoDn1
	3Pv5SAPdLUmhypKzUW0v9O/jnR78=
X-Received: by 2002:ac8:5a96:0:b0:4d2:c24f:8495 with SMTP id d75a77b69052e-4e576ab6f37mr145453631cf.10.1759840766081;
        Tue, 07 Oct 2025 05:39:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFBOfqIkALCYby5/GHjIjhxo1RktcdDyNxe0vMnZPbSP14BURV+Jd5BfDc/NgetMniX/+yEhQ==
X-Received: by 2002:ac8:5a96:0:b0:4d2:c24f:8495 with SMTP id d75a77b69052e-4e576ab6f37mr145453201cf.10.1759840765488;
        Tue, 07 Oct 2025 05:39:25 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b486970b2basm1386434866b.51.2025.10.07.05.39.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Oct 2025 05:39:24 -0700 (PDT)
Message-ID: <b6223af9-2d9e-4ccd-b297-79f63167242b@oss.qualcomm.com>
Date: Tue, 7 Oct 2025 14:39:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: qcm2290: add LPASS LPI pin
 controller
To: Alexey Klimov <alexey.klimov@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Srinivas Kandagatla <srini@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-sound@vger.kernel.org
References: <20251007-rb1_hdmi_audio-v2-0-821b6a705e4c@linaro.org>
 <20251007-rb1_hdmi_audio-v2-3-821b6a705e4c@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251007-rb1_hdmi_audio-v2-3-821b6a705e4c@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=QtdTHFyd c=1 sm=1 tr=0 ts=68e509ff cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=83KosTCz9JabPjGXDAIA:9 a=QEXdDO2ut3YA:10 a=5XHQ0vS7sDUA:10
 a=dawVfQjAaf238kedN5IG:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: MuUELc9DEkk1I3Em8xPojJLkF2emg3Gv
X-Proofpoint-GUID: MuUELc9DEkk1I3Em8xPojJLkF2emg3Gv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA2MDEyMSBTYWx0ZWRfX/BFsGeKX70j2
 kkbDdpRaeM4OkR2JKP3GkVAalRpcFkhLEaOi2ot4a6W8aO2X6ujBvwzeG2XHcx7lDW0K1Lu3rbG
 kU3uiAI3BFP4N16D2Qlt/tjzcBjOY6gXqTCH9Kgh1u3vntsQSE6sDND52H/nULBqD7+LEayj+QC
 KaJk6blm8qS9BA3H1yeDVqsHVJkCF1AneAFuMNEVxKWMeD4ia5Zv05yWukVZlxI4CbzhUVFEPdQ
 IQ1XBJQZY7NYfiTvKRNqLkClLz3ORr4Fsi3D7VmeKr4Ps1mvGulKLJUNa/JLYV0GQnIYmY0/nHe
 s/XmOB7SlV82yYuOe0RdhqZ+HCtuBecg+B8rqD6RFIJ6wFiozH6BdX2U1/zH2xHQ7JxWixB4alu
 jlBqkUCXTHGUPj+qkbRgGY9rU2UcwA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-07_01,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0 bulkscore=0
 adultscore=0 clxscore=1015 suspectscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510060121

On 10/7/25 4:03 AM, Alexey Klimov wrote:
> Add the Low Power Audio SubSystem Low Power Island (LPASS LPI) pin
> controller device node required for audio subsystem on Qualcomm
> QRB2210 RB1. QRB2210 is based on qcm2290 which is based on sm6115.
> 
> While at this, also add description of lpi_i2s2 pins (active state)
> required for audio playback via HDMI/I2S.
> 
> Cc: Srinivas Kandagatla <srini@kernel.org>
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> ---

[...]

> +			lpi_i2s2_active: lpi-i2s2-active-state {
> +				data-pins {
> +					pins = "gpio12";
> +					function = "i2s2_data";
> +					bias-disable;
> +					drive-strength = <8>;
> +					output-high;

I.. doubt output-high is what you want?

> +				};
> +
> +				sck-pins {
> +					pins = "gpio10";
> +					function = "i2s2_clk";
> +					bias-disable;
> +					drive-strength = <8>;
> +					output-high;
> +				};
> +
> +				ws-pins {
> +					pins = "gpio11";

Please re-sort pin entries by the gpio index

https://docs.kernel.org/devicetree/bindings/dts-coding-style.html#order-of-nodes

Konrad

