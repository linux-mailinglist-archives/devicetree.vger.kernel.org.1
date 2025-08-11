Return-Path: <devicetree+bounces-203196-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C9EE6B205C1
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 12:38:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1B49118948E7
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 10:38:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 280D226E6E7;
	Mon, 11 Aug 2025 10:37:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S+J0AC6q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B875326E704
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 10:37:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754908627; cv=none; b=Tgc1yuhe1ePrrGXN1LqfE1xZAcclKVJNRY8HlroIDtbkfEtxsZwfZYQzsOj3nOlORD3GziPt0wS8hkGn49lMcbnQkjmSyI99Lkx7Lgek+n5etC/M11D6pAuaK5wF1YGhhwtKVpflO50JM3D5nSQyCxsgdVenE+12I7P3aVHCMAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754908627; c=relaxed/simple;
	bh=QikfI1Y7UGLrmo/VJcTOMNHQlyxpRldmUGBXg94jSG4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SCjgufJm5ERL7CahyivPnY12kvMaTpSNkOomzRgVfM+UgUl8lvxiRhp6VWAJvehrEBTdPH+F73+Bx0sVCDledTw3SEj9yxwfvP4SU3U2TxgVyGLqEcwRwqk3ThTdDdMG/MUM+p6q7QV4x0iBa67hWsMCfpBQqC4h9qWbAOgexZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S+J0AC6q; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57B9dIrJ000789
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 10:37:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6J24Z6vXIRBkYsnNDEpJUSa0Kgse74Ef/BzsEOsA0z8=; b=S+J0AC6qY0UYJMaJ
	M6vU6EDV5FPItVmIwf9NVBwbc9o9Codo30mkWYwcVGQWyxWl0jgPg18uBGyrwGb+
	Fy2fYPQnM2bKZOaIfSNMTM0KYtvB9nzs369FK0U6yKZnDJzs1jJk6LjRMxEWAe4B
	GOXFT0lBpwMDEep43ItDthHT0PzePvyi35j0EjRDIFdEe1iwAo4Mgk9+T4nBEf4+
	jfAKE2iX7wrPOEcfzOJy8VB0yXXeLH59HMGO6Pp9Y/Jhc0g4ogGoLWV4jNWClhzI
	9za1XRVtzlyJAfn/p08lkCjwJInQ6bndEb8zsPv2U94+eN4hY5kCqSCP4u0w2aZd
	y4Hf8w==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dym9m01e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 10:37:05 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-7092ca7dae0so11720846d6.0
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 03:37:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754908624; x=1755513424;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6J24Z6vXIRBkYsnNDEpJUSa0Kgse74Ef/BzsEOsA0z8=;
        b=qzlJc2eLy1S2ZhMcO6QodxRR1CsxB9l2XBeO0FwEM1p7Xi5VbZGkaghLCw2mzH/ZKp
         3BQvu472DLxHkuakZpkmGYop0u18E1skIWTi0J5icKkP4ux+SuaQvJ2Xq0WPr6CWiwv9
         kJX76+XtnoDYQIxcJ9ovRFhZI0uFCsuAk69JPftMK3ZwwLxGdIWbSJTG46d915esC1zf
         tfekbdZMzHjYEv7Tvj3Z5PWVtcE7+c540x6brjrMg+QHeQBfFc1ldMKsXD7fhQfRkJtG
         tx7IFonfGeO7p1q+yl5cWHxKAm+zIq0fejJQtgwQe6jBJWUvn/7BQ/PizS91GBZGgc15
         wvYw==
X-Forwarded-Encrypted: i=1; AJvYcCV6fYyYT4B9wPSSGfFo421QDspBEwMRn/UN9rFXKM9csiaxuXc5TPn62+2wvjsM8y7I0MvpIuQ9S6/o@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9tZJSSPK3peRgBMs2glEhsxV+LjJmPiGXSmBNuB9vSOQge/xu
	GhZsuFTjcqKEIgTNFuMLdk7Br7zCsAVXwwTBrHYaI/LybJzf2vFdSy0Ba6gQcZRsTG5Q2KhqaBB
	waR0MFB5ClcdT6xjzhl0h+qgqa/c1dq7dnNt4yFM0Xt64pN6w/Asl1QNQkb5HuYTD
X-Gm-Gg: ASbGncvJQCoBPuUYqGb4Jkhc36Z86NS17ZDotmTKnkrT5bNM3I/A7KCN42yEjNESFN/
	E/gDzBIqYKFGVWMmXqlRi8g+1n7kwNmGFQzHJZNZHy8xHnD1SMSNPYlyuRKzheqBovCYqaxRW/W
	ZzbUIv4s+GPnratnvGzdh5x23raMoi2MDnLCbPtCGrKHTSrriW4Te2yaJgnHjZqn3uE99qIwXrb
	WXnyh5u5ebij/gsiOpsxclkq2QOrtXWProvrUa5HWHgkT5qxaHAWnx23ALbG4UxiOczl0JqWWVP
	F/4L24SPszTGA4pzt1KgwRWIurp/iJCtGf8uoVDdAbFRU3dAtKjTrpB+kv3dsTTqdTA0Ofwdl57
	udayOGISkPJkZ3E/CDQ==
X-Received: by 2002:a05:6214:e4c:b0:709:5007:9f80 with SMTP id 6a1803df08f44-709abcb6b7cmr55987206d6.0.1754908623532;
        Mon, 11 Aug 2025 03:37:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHTrAinsHS3lX6lpHjYp65jzzXK4FwsVNqOAIzUsaWy9noN4VK/hftIl5eBF7ttkBFQYzjclg==
X-Received: by 2002:a05:6214:e4c:b0:709:5007:9f80 with SMTP id 6a1803df08f44-709abcb6b7cmr55987086d6.0.1754908623021;
        Mon, 11 Aug 2025 03:37:03 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-615a8f245c1sm18271623a12.22.2025.08.11.03.37.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Aug 2025 03:37:02 -0700 (PDT)
Message-ID: <619efc83-37f3-4b4e-b756-c53ecd2f6867@oss.qualcomm.com>
Date: Mon, 11 Aug 2025 12:37:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/6] phy: qcom: qmp-combo: register a typec mux to
 change the QMPPHY_MODE
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
References: <20250807-topic-4ln_dp_respin-v4-0-43272d6eca92@oss.qualcomm.com>
 <20250807-topic-4ln_dp_respin-v4-5-43272d6eca92@oss.qualcomm.com>
 <ibrupwvn5frzb4vo3eukb7p7pzonaxwhygshz743wmyrbprkcq@xcpt4ryzvwqr>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <ibrupwvn5frzb4vo3eukb7p7pzonaxwhygshz743wmyrbprkcq@xcpt4ryzvwqr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: PDYJpLJghEzJhpLEnNZEN2PebxoKfbRV
X-Proofpoint-ORIG-GUID: PDYJpLJghEzJhpLEnNZEN2PebxoKfbRV
X-Authority-Analysis: v=2.4 cv=YZ+95xRf c=1 sm=1 tr=0 ts=6899c7d1 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=ZHkuymcytaaAwfHE7G8A:9 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAzNiBTYWx0ZWRfXwKs42wSpIbX4
 48C1ov5FvE7wgzu3uoODsLjFb9VXMtqUP/9IBQwNFEQTO3VsCrB/996RloUPjh2t+rEUm/vvOi4
 Yc2WzBInUoudwAtaAVFYQsK7xqLCF2Ru2o9dJAwTVFdxllt3g/6Y7JvFoZtkn6J9nNP6g/LCYDd
 LApQNEbSMt3/MsFdQ+r1tAz9AziZ5FfvLOBZnIR8xrzgQwuuxp9XsXeiG2VMRo2QfGi7x4LOwrz
 nX78fdipB43rhDRfHd9Pwh0kXq1lfPwQaOdx8pc8GDkjxMABMEAtbQodvlx7qJpGFMRQRCf307p
 bD9l5hoINx0Blkt2kXVL4uYXhZbmSFb5lEU3p0j4y5W2srcKXP0uXmc1mO6fFiGDsT31w9Tawcp
 VEX1LMHl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-11_01,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 spamscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 adultscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508090036

On 8/9/25 10:13 AM, Dmitry Baryshkov wrote:
> On Thu, Aug 07, 2025 at 06:33:23PM +0200, Konrad Dybcio wrote:
>> From: Neil Armstrong <neil.armstrong@linaro.org>
>>
>> Register a typec mux in order to change the PHY mode on the Type-C
>> mux events depending on the mode and the svid when in Altmode setup.
>>
>> The DisplayPort phy should be left enabled if is still powered on
>> by the DRM DisplayPort controller, so bail out until the DisplayPort
>> PHY is not powered off.
>>
>> The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
>> will be set in between of USB-Only, Combo and DisplayPort Only so
>> this will leave enough time to the DRM DisplayPort controller to
>> turn of the DisplayPort PHY.
>>
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> [konrad: renaming, rewording, bug fixes]
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> ---
>>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 118 ++++++++++++++++++++++++++++--
>>  1 file changed, 113 insertions(+), 5 deletions(-)
>>
>> +
>> +	if (qmp->qmpphy_mode != QMPPHY_MODE_USB3_ONLY && qmp->dp_powered_on) {
>> +		dev_dbg(qmp->dev, "typec_mux_set: DP PHY is still in use, delaying switch\n");
>> +		return 0;
>> +	}
> 
> I can't say that I'm fully happy about it, nevertheless:
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

IIUC we'll be able to get rid of it after the dp rework?

Konrad

