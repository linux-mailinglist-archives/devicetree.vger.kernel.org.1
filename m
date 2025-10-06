Return-Path: <devicetree+bounces-223777-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E54BBD70D
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 11:28:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 98F704E31B2
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 09:27:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73E71268C55;
	Mon,  6 Oct 2025 09:27:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BNMVWT1x"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E56C0267AF6
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 09:27:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759742876; cv=none; b=CwnovdZMk70ZLMaY3cqYeacpkC+lTYNd3B9UUWrKvHND+JxZHmqn4lgtOEmcAO1OFVz7YkmcYLp1lRHNqfpyKd+MufRzOHmi4MTpnUU/TgZGTuxDmbxchwyLP5TivQ9pquQD4D2kLGsXR/bZtiahjhJanRro0WP/EwSYR8wdPe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759742876; c=relaxed/simple;
	bh=QU58PgIDoxyXxvtrv9nIkUTP1aP3Ji5RwiYuSuwuyDc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OtUAsC9BoF2/RC9LaehdHtIfxxIQiC/qP5h1ReYUe+5E4PlsEbquvIHN2dVGCFT4g5/G1jpMENkmvbHHKsE63egnm5Y4KnhqAuq5XlDrqYnop76QmpIRJKWNgTFHMXpsO6N9UMe623ZoKjzKLSWhZ2SUiJ92XXZowQtcvWfRZq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BNMVWT1x; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 595Npv1w003197
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 09:27:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/pcwlnjS2vmra4LDe4EMuIdtHHOf5Cpr9bJvDe22TZQ=; b=BNMVWT1xSfVjrHr6
	prZKemFBfBPrpPFDPdzuWXdSw/eyvjjkfTuK4EC8BfbYyenDb0KTt4araD0L1j9t
	pTlpG5+WoZtokGsVfQ5tw2Y/mOKz59A3ZRjCfQdUI6jaXjJdcvYyoIygeobayeiO
	9181KHoE0VCsa0eljEi/nfPmUr4T5gmOAjV4p7IDEwwQVcCRyKGeQFJlOzdsajkg
	8az/qTMih45U1obx60ypgShyItRAqI3HITH/Ux8heegdywKkizP4dnk0yQa8hNOL
	ZuVeet7oenEJQJPfT3bT5E19z0cSKhefPipEG9jRw91eBAw5CBRLNCNHseODcqzv
	92N6MA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jtk6uhk8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 09:27:53 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4e231785cc3so20410031cf.1
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 02:27:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759742873; x=1760347673;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/pcwlnjS2vmra4LDe4EMuIdtHHOf5Cpr9bJvDe22TZQ=;
        b=YeGg+ocPryKkATzMgN68o/thDFB50i3ahiI8tLJ7iPIcIfoPtIHRp/QRQWd5aRJExx
         S5nd5JbJi/HUOGnYiGAlceClb6iw0yTyUJHSxYqrgcm/kvw/Y+HPLd1h6VVhZRxBSkya
         rYnNVSEdS7XFPhe6W+AR2y/TaXS8B+nbFAIeAP2/7gWMPDbrC5H0OeSQHr30Q0YM0080
         XwNS+xp/G3G11oIZagB1y8vXKcwQFLTfMoiXbG/G+oQfqtXc0cGbZSBxJpVMoKpsk6zW
         Lb9se5ztEHmImgJMXnf+NnZt13AX8ABfgNeJAfp9XaZWcdNGmdyp+Ru61rUJGOJWoXxE
         gc1Q==
X-Forwarded-Encrypted: i=1; AJvYcCX0zn3a7dNCSfYANLHv9/xlZrfH/1PuAQ5Qva0kMDbL9KmWUnrZqg0rQu5upYIep1R6foxn0udQqfdS@vger.kernel.org
X-Gm-Message-State: AOJu0YwCcAa0+7mXi7Ft/lDJ0h5rIqiRmM5P0Gy/V+1EEMyTSbBbE02s
	bNcN3Pw9CmWbVDPDCUK8ZJY322HAxTtOy1yhmgA8xb5aarbs34Asxm8YcPiN6G/GuPAs73G+YPU
	tUNt4uOB267UdYTirofSJse5pFUjTtFG/C8WwnP0lL+iCJb9LAik2IuIfJntGTr44
X-Gm-Gg: ASbGncuTK1PYR7He/08HOb+vcuDeNET6263Aup0NA9QgTQsE2PJFYaTAE+bS2kIt65n
	5w8YwJMg9IRR4Esm7rMXxjsVP6ebBAganKpk/NM1VRvJY5KhupQKj6IrMXq9LwZUInP4/20ARJN
	AhDYLPMthklQEOSjCZt17RhizDLtk0spezMcOYRaUOKipTzLOBXopRuRb6XN7h88smAwFTKCnut
	rDT/9TsVtQjO9iL+ZNTQRAGggXZLinSRY9Bfn9H3KEKfdzuKMBSWvAUr6AJ6d+NUjpjnZMjUvHk
	YQWOl6Xm0dBwgmS/sfkVsGJUMd5if44qJCyabfuHccrre/sYXIw0BMQ9i2sDPjXm23lugO3N8O+
	V4VeB5cRDql6UqRMmoobduvrLf0g=
X-Received: by 2002:ac8:5f91:0:b0:4b5:eaee:1c04 with SMTP id d75a77b69052e-4e576955b55mr107433221cf.0.1759742872934;
        Mon, 06 Oct 2025 02:27:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHk+OyISCU/gYVLyFTdyZBlaX8VxXHWghQ/t1CCKjFjUKk15AZPAUHnnfYB9omxMiCPUC3/Ww==
X-Received: by 2002:ac8:5f91:0:b0:4b5:eaee:1c04 with SMTP id d75a77b69052e-4e576955b55mr107433051cf.0.1759742872419;
        Mon, 06 Oct 2025 02:27:52 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4869b4f1d1sm1089257366b.71.2025.10.06.02.27.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 02:27:51 -0700 (PDT)
Message-ID: <4a442f02-405d-4a88-bca9-92233e602653@oss.qualcomm.com>
Date: Mon, 6 Oct 2025 11:27:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: msm8996: add interconnect paths to
 USB2 controller
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Georgi Djakov <djakov@kernel.org>,
        Yassine Oudjana
 <y.oudjana@protonmail.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20251002-fix-msm8996-icc-v1-0-a36a05d1f869@oss.qualcomm.com>
 <20251002-fix-msm8996-icc-v1-2-a36a05d1f869@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251002-fix-msm8996-icc-v1-2-a36a05d1f869@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAxNyBTYWx0ZWRfX0vLmuDAN+Y+/
 tpclmLeArWH0tHWV2yTaKaCSPGNF/LjMj9T3NFR9BVErOuy2ayFxkv4u+nqNDCjuKuYkC9A4z+C
 Xwzg5EALlQVZCHlcTiW7zgjQ7q7rDPp8Pfpoir1Bxhb0k22gQ7QLjJ9PVuXPavnBn/1TgW+k2xj
 9KHd1MwZPOtnwXe09SyiirRoZ4kbYODfj0dWSBiiAYE+HoBPcgm2kVCxfheIlbq+nuTuLi1C92j
 EmuAtSXkX94BwHq1XxYYqF06APgkznmwnxS3vG+FR++MVlYjNXQIsXJ8DxXW+5ka5G87Q4/TzKV
 MlqWecJ9AAQ3d8wFEH7SY+OI82xkgrVpTUNvL44BTofsJG9PpR0UzUJtqT/yhxvGYHV+nWmAp3K
 1mYToNlzI3rBa292uTnPLBMp6FN7kQ==
X-Authority-Analysis: v=2.4 cv=do3Wylg4 c=1 sm=1 tr=0 ts=68e38b99 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=81On53fQ4K8t90Y-VgIA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: LEGAqlGCC7TgrT_F6VNLU_l_FZxoi2Ha
X-Proofpoint-ORIG-GUID: LEGAqlGCC7TgrT_F6VNLU_l_FZxoi2Ha
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_03,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015
 malwarescore=0 spamscore=0 impostorscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040017

On 10/2/25 10:53 AM, Dmitry Baryshkov wrote:
> Add the missing interconnects to the USB2 host. The Fixes tag points to
> the commit which broke probing of the USB host on that platform.
> 
> Fixes: 130733a10079 ("interconnect: qcom: msm8996: Promote to core_initcall")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> 
> ---
> Note: without the previous patch applying this one can result in the
> kernel stuck at booting because of the EPROBE_DEFER loop. I suggest
> applying them through the same tree in order to make sure that the tree
> is not broken (or using an immutable tag for the icc commit).
> ---

with that ^

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

