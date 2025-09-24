Return-Path: <devicetree+bounces-220852-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 461D7B9B6AC
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 20:21:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 18CFB16AFC5
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 18:20:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E55A731B122;
	Wed, 24 Sep 2025 18:13:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DMHUu3Ff"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 602EB313290
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 18:13:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758737596; cv=none; b=rcgf4Pbcl9Du2M3q4rRUnEtC7VoN3FMNFWdpOTwRkHtgybRP2ccpYZH0+wcHNEXgA2vzMWyGrYDVLwl3BDgRxltveYlqYRzcQwrUQljt4V9KJ5QdI2uCosS5ejhN0DttfO92Ljn8NPOWSCr8TnIjp9LpwjKvYYiQqmkzhk8RXmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758737596; c=relaxed/simple;
	bh=M7ZCsviA12Kq2BLXiMjEzbUy+IfNX0SZv2oZDsAaha0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gZbOzzDbQzb9qznfEd04LIQxhsrWIdiIrV3E2tTYGIL64elcoiUiFFt+WKNKywwQcKboXnzzweflScCJLtlR4sXT9EsFzl9/HVcNxDYdwGcWcpflTWl+Ck/vXRe4hp7zZhe5C4ir+KsjlVNkbPbdI/4gyyRkTDdfz7IIWneVCS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DMHUu3Ff; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ODGOfF017437
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 18:13:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+d/bjG4IKs4GaMkXZIdc3sQ21R7u8h5UijejmydnXp8=; b=DMHUu3FfvOsgGLEk
	uYyB9Q3MR/mNQPMthq90t+mnpZ/tu/itlCpgBR7Cw4sfC7GvrjxwkWWIuXh8WPtC
	ltlWfa33T59Vsx0CourqHd2umhbhyrTOntbFbFqxWPr0Sky6lxpepIn0vhmzkUyj
	8Ef/GBjH0l6PiWxF+zrV8eGN4iNI9bywXiYmr7FycjpqksxTO+8wEBOUE+qhlhae
	hkgKKVYHEzZRGkfUskBzWXKqxoNr3s3NoVHJXbKcAP3R1YYXK3LlIXl7YCDLSRVE
	x/H2lGPcexpV0oz/T6GRgcvzZ09U6R/NdgJOsEKVdjg/Zh9twmfLWNGuKM9QYn6w
	m2c1NA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bhvjxp22-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 18:13:14 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b3ca5e94d3so204411cf.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 11:13:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758737593; x=1759342393;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+d/bjG4IKs4GaMkXZIdc3sQ21R7u8h5UijejmydnXp8=;
        b=oEcPyGc5PIIXPwNPt5/jFeszU5y54seyiFuBxZ+No9Pvrakh9e2FvD8AUOchcMsrym
         1v0LOy1hVWsbQoDZbVex9Gvzlg25Brx3YwPrzxDgNV0ECfjcvDSOUSIMMkVXt/zCYwc1
         gjRJXORZu7C/KJV9Nth8BEAMPJTV7Rx7/Hh2Z1wFSwy7kwG55Xpj3g//fK+KNVco1xhX
         LDNRdhGQQ/boJMoCnxo1Tn0PjgC99UijvgN0c49EILh60rOO5afFOwDAETPQH/dBVLbr
         4NURh+oIgMrqY72AdlD+1jg3XFKrl0RcFllx4Ngewpxmu3MZGz2+j1bInES3oMjl1OY5
         DQrw==
X-Forwarded-Encrypted: i=1; AJvYcCXyXWy58dwMZPl54eNSiJvUr3eNrrX7wNfNNAy/6uSWgXfoGf5WZWuw7NMiHyPCmbxptKB6c5sjp+2f@vger.kernel.org
X-Gm-Message-State: AOJu0YwZJBOxGSvpI9CjKxkffE83jRiiAclZHyrCC7HurvvA2+iBH0q9
	RWWYCzCvRsAkejIaVh9reSh4V9ecmL9UygAnWTEnjctbqXfeSB24OLyIrVkqiacKgkyIASpc/3b
	lUGxATv+tWM0gKC0YE9LneAx5qhUlZVZWS+g+Z9gFXVC3Uw38XCKNlDYPnhptWe8b
X-Gm-Gg: ASbGnctAozbImFrDvGKvdy1nzgcqZgi0DWODQfDtfXlV6krhTbIog3pFkgZZ73WK3A6
	3qp8bHDBibFk6aimlqDzwJ5xNZp41J7uhhjLz9ohTHbnQCXPk/Unb3xIAf9bq5qGZ7ZLLRaYRBp
	8qiE4C9ftfz5ZuTslDjpVN38dlncLKVSdEX2zZGFIqoJEFMziDtCjRFtCCfHFHiy+Jybzm2tsv3
	7rTuXxFNvNwO+UOrIG77+qioma7rCgeH+4ybLzJPLf5lzmISZP2JXWyP0LmaineU7tvvjCRLuOM
	/IqdW/ZhLI0oAFeYBsnUacPs66RUtmevrJ2MFT3fqjF51MVDozTkOKOKuOTkwAjae2MfzVipSX3
	061hOX8NGmC0cXtV38WQ7jg==
X-Received: by 2002:ac8:5a16:0:b0:4d7:6c8a:4792 with SMTP id d75a77b69052e-4da41e11477mr7368411cf.0.1758737593163;
        Wed, 24 Sep 2025 11:13:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEUrYdsVWHPkjY92Tsx8psvdidntggOzOo1g1ABjKRkZScDXnajq+uUIinLMN1uXr7EvDbwDw==
X-Received: by 2002:ac8:5a16:0:b0:4d7:6c8a:4792 with SMTP id d75a77b69052e-4da41e11477mr7368081cf.0.1758737592593;
        Wed, 24 Sep 2025 11:13:12 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b2a1773375esm916182166b.20.2025.09.24.11.13.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Sep 2025 11:13:11 -0700 (PDT)
Message-ID: <a7a41d1f-372e-4e90-9785-fd63212752c2@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 20:13:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/14] arm64: dts: qcom: add refgen regulators where
 applicable
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20250921-refgen-v1-0-9d93e64133ea@oss.qualcomm.com>
 <eec9a046-2742-4b7f-86ac-ef11dae19aee@oss.qualcomm.com>
 <CAO9ioeWJh6fkDYT-Y6O4mJHN3CpVw-D0nygvA0TsgHGqXpLq-w@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAO9ioeWJh6fkDYT-Y6O4mJHN3CpVw-D0nygvA0TsgHGqXpLq-w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: O-g5W5nsC4Zs_IPKjskvYG7UcIBktcr4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAxMSBTYWx0ZWRfXyFb0/2/lpvzG
 Gz544jWC+kPRNSs8zsznxadYmXfhG3w/bqenDTVrTsxoA4wyWNZAWOhiQ30hNTdWqt03/uUa7CH
 jTeyqOGLmusUJrfcqb9vhmtwr3TTRMpj47UrsCt2y1XUGW2YE0bXq8Yvt+BNWW4kYkVXbJAOlh7
 lVk+IpgGfnr3hJiHqUClCGa4y3HwQN5mS866hvldB2Ht++nJaGxyPpcVjqJGdStlvLD4MBDqIWy
 9WSQ1hUecLsq6A6SKEm9/i/oohGmHmRTiYbZBrt2ws83AubgHOIk8vVzKWJz2KS7PT8nvRooyB/
 jpYlYaWq1moP2pm1gVXFoMQWCUv3l57R/zFJ8typQYGAUOXvpJtbLF/UgOL0Sm1sEiURoRjlrNK
 GNgVwG2E
X-Proofpoint-GUID: O-g5W5nsC4Zs_IPKjskvYG7UcIBktcr4
X-Authority-Analysis: v=2.4 cv=Csq/cm4D c=1 sm=1 tr=0 ts=68d434ba cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=pnmvfhyxxA4803ucUmIA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_04,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0 phishscore=0
 clxscore=1015 spamscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230011

On 9/24/25 7:32 PM, Dmitry Baryshkov wrote:
> On Wed, 24 Sept 2025 at 13:13, Konrad Dybcio
> <konrad.dybcio@oss.qualcomm.com> wrote:
>>
>> On 9/21/25 9:09 AM, Dmitry Baryshkov wrote:
>>> On several Qualcomm platforms the DSI internally is using the refgen
>>> regulator. Document the regulator for the SDM670, Lemans and QCS8300
>>> platforms. Add corresponding device nodes and link them as a supply to
>>> the DSI node.
>>
>> It's likely that all PHY-ish hardware uses REFGEN, so please make
>> extra sure your patches won't kill DP/USB/camera
> 
> As far as I understand, DP and USB cast their votes directly in HW.
> For camera... I don't know. Do we need an extra vote?

$ rg refgen-supply arch -l

arch/arm64/boot/dts/qcom/lito-camera.dtsi
arch/arm64/boot/dts/qcom/kona-camera.dtsi
arch/arm64/boot/dts/qcom/lagoon-camera.dtsi
arch/arm64/boot/dts/qcom/lahaina-sde.dtsi
arch/arm64/boot/dts/qcom/kona-sde.dtsi

Konrad

