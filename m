Return-Path: <devicetree+bounces-212707-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 58AB2B4392B
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 12:48:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E1CBB1C81886
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 10:48:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE4BE2FAC10;
	Thu,  4 Sep 2025 10:47:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="L8UprB7/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F401F2ECEB9
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 10:47:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756982871; cv=none; b=eR+QhH8LPB8yYnt5WJ+QD8FTloVi1BR4DceUMr0zLwtftRaZMuVQ52oEANaDk+PaapzliDVrEKaw3UX0etbFrEEc9avSpHq0NPVVvhebk5j+21DiV5+42S6lWuj7PMqvpyIflQeFG/SfkURoy/Ih3303ojn211NLUVRBU1y/Gf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756982871; c=relaxed/simple;
	bh=+MvyZKV394meBDJI7Ka/R3SOhT63C//XXT5EerNYuUY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qE1t7c3fxFed42gywEGq8WTKzrvxqchi93zSpZdZWkEa9vYybNgCmltbrfkN0KFJPQg22tcgOf1iP1y7EawbeVfeQqmWx5GEPa6s0IEZ1MkUHmKua7uDEqx4o9kotFSX0l1n+SYuru9DrQeBydj5Z+HvsyFulvhhlZTbyPdNENM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=L8UprB7/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5849XKPr031993
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 10:47:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	sLHQFn6pkMnsAa57RfPomE4K+Un5vLqC03X20SdqDEQ=; b=L8UprB7/oErcgVda
	zKHYwOzjome2tvY4NfHJAWGpY7G+0exIFWN2ZkVyhPP8XRDKv4KTnyNqIL8xKs0v
	nw57QFoAMxeCKT38V8Hatw3UpFmF9zTEyjDDtaGHo2pmCOnsfc8coJ2AeqD0QwrX
	XL/KzBGeTLvCR9ofY7ULvAfMOB8Q+HlMpqemaXcG7Eo511B3UdHI2aHYuOpXXEkQ
	arLY7Nj9MOxmDbINYQEVC6Q6e7E9RMoi6yBi58p+yoepOxl7pvt8Sa0JkbUTXAtY
	n7wQviY+8q/ed3m1aVUltLDbpDQIm4PL7qGf5GbxjgqkdOIcD3Ldatr6U46Z57R1
	fKgYcw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urw077u3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 10:47:47 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b31f744865so1402331cf.3
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 03:47:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756982867; x=1757587667;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sLHQFn6pkMnsAa57RfPomE4K+Un5vLqC03X20SdqDEQ=;
        b=jwTPQNX+AiK0ZfBsbbCpLRtm1Iz9Uc5lLc8c0mjTTpAfK5qoz5Y649T9sflUASbDY/
         Ldo5u7crB81my8oiorOQA2kKD5m8KOr8d41/EX9vvEwb0bxtdJPr1INQHInI4+PBXgVZ
         rmjEvjukd/O26BLgn1qc4Ni5lDKLmVz02sMhLVufafH6pbJnOGYo13r/2MSK+rVkTtBU
         tLtUihovFQwlRwQ/CBEEl1rc5vqvggOypfFpUWulrpMNaCGhVejzrloUJKmKpFk4ovFo
         AGXdlCsPmgFJtw+eU7r73y3wC7BroqINs/8P+iadDOIhhAYsi+0n37RBws80/yHDeETd
         1ckA==
X-Forwarded-Encrypted: i=1; AJvYcCUkza2ETjJgYE1cFk3xk4qI1fCdwQC5v0JaChiLr3h3W+vTpLMCjLzJzIlI1B/jLpSfAVxFyDw6Z4cr@vger.kernel.org
X-Gm-Message-State: AOJu0YwDyxnbhH7UDnqT0HR4Czq5Y6qNfv8hWjyRYeYPQvoJJWXMwDff
	ofx4d6QA/taQTnZAO2IYsDh6r38mSxROcUYKRiJGhuMk4oxb61OEUwUifIWn3d8ASiUI7rzwtPg
	ms8zmD1ZodY/oVou1pq89J/zIwfv0cextTBFITOkPx4za//3OJJEGME9anw/ShDZT
X-Gm-Gg: ASbGncuG8jT2mrjDQ+a0fwMMVR0712W5r4tmLqpKQFIOoFHBV2rqlrjcuTl1RRkbOhp
	NcX5bBZgND8s5NkhTQh+S7km0O/jomrT3ok6RrbBMkS0eltecsJZHZd7MlFMXOf/OXvbfbJjMCC
	TvgxVegydiDohyC0XdKix0R76IP6/uj3gndAqZewU6uBdAwjw99799AXMlNqICuCK4yvEmbgvFa
	R0pT2Fx2bxRghaybNU8gbzE6UhE5IzhdM8ntWjFxctnJZjzAAF4UHmiAv5BbLPVtZqGBsJvDJOt
	o4oQjV6xk5AsPJgUmeHCdrCc6PrqjrW8nWtjIJ2mhTOhh0PE3RrzR09b0w04jv9KF7kAhdyM7Rw
	ugR+SlfA3U9nWUNG886tc4A==
X-Received: by 2002:a05:622a:1a04:b0:4b4:95d0:ffd3 with SMTP id d75a77b69052e-4b495d11860mr34284911cf.1.1756982866898;
        Thu, 04 Sep 2025 03:47:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGXASXN0Fwg00LcigTqQaOYYWJNuiGp81igsFg+arEoNr/lKhb7mhDv0j6dJtANX8BbKakqPA==
X-Received: by 2002:a05:622a:1a04:b0:4b4:95d0:ffd3 with SMTP id d75a77b69052e-4b495d11860mr34284721cf.1.1756982866457;
        Thu, 04 Sep 2025 03:47:46 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61cfc51e109sm14011468a12.41.2025.09.04.03.47.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 03:47:45 -0700 (PDT)
Message-ID: <bf5e7ea2-9f0f-4d83-a567-028ffbe184bf@oss.qualcomm.com>
Date: Thu, 4 Sep 2025 12:47:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] phy: qcom-qmp: qserdes-com: Add some more v8 register
 offsets
To: Abel Vesa <abel.vesa@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wenbin Yao <wenbin.yao@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250904-phy-qcom-edp-add-glymur-support-v1-0-e83c6b9a145b@linaro.org>
 <20250904-phy-qcom-edp-add-glymur-support-v1-2-e83c6b9a145b@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250904-phy-qcom-edp-add-glymur-support-v1-2-e83c6b9a145b@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: InTreB-kX27uxcsWvFC058b__L0iCwzj
X-Proofpoint-ORIG-GUID: InTreB-kX27uxcsWvFC058b__L0iCwzj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNyBTYWx0ZWRfXzcH0hAaJcQqG
 Xjegk0xObf6E8FqHiGh4d/DqsQAgYEjK2XKo3PmiI6RNr77IwB0esiXx3hF7UP2T/XPhWAoVOdp
 xkDJ3yRavlmNpjoE+XViYBQYRxVIm88FMShEnUPHUqpTXjDJlNnDKOhnCCM74cIJ2+zb/G3PfVu
 ik+S6+2ENEgTEwvBuz4YjhHi5PyPUZMqZMHHr/j9867i2UMBvwL1Xdi05kKlUJG68InpAydEzjV
 5okX61MmpoNeW/UWL9MwrwUpNzzbTZIDR6MaZI91cEfR95UhEdW7cgNbFLhdZZzmbltklIfW9an
 BmNbiz4FzEMI8DKAmbu6RXX45lqRsxnYvN0yrdMElwpVtJIkVsZS3W+SUSWGxVmkwnnHcG4baL7
 DoFdHRSB
X-Authority-Analysis: v=2.4 cv=NrDRc9dJ c=1 sm=1 tr=0 ts=68b96e53 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=0CiQ1jBnox6ZqaB-0zAA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 impostorscore=0 spamscore=0 bulkscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300027

On 9/4/25 8:55 AM, Abel Vesa wrote:
> Add the missing v8 register offsets needed by the eDP/DP PHY driver.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

+ a couple folks that I talked to about this lately

Please create a separate header for this, Glymur contains multiple
"v8"/"v8.x" PHYs that are not identical to one another (or vs ones
present on different SoCs), even if advertising that revision

It may be a partial match, but there are also stark differences

Konrad

