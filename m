Return-Path: <devicetree+bounces-224812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B102BC8235
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 10:53:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A48793B7780
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 08:53:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8775F2D4B7A;
	Thu,  9 Oct 2025 08:52:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Xrw+H4t2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E34792D46A1
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 08:52:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759999962; cv=none; b=qzKIUyMkaBzDVVsbXk8fZm71JeKN+OMySJcWLQVLQzxPg0iHT/77qfacFtEaREmFrmSbH00ypP7EutliSIxc55Nn5vIovB7jbgez8s7nPWXc6+BR9cKwGpVOWzkd49zQDJ61XdYmxZ9aU+OrGT/s2HqsafrDtE6hPsJQTaQnn30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759999962; c=relaxed/simple;
	bh=SvL6QwL2kbfoDMu7swIfDh31Z4SBAEEr16lTQLxGnf0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=W62cYz7gLvN9CQqTImDlR++GV3gI+KED5G7/cAyygJYMFI+9IZc3a6gYedFapE79T228YJ4XJu7h8o/85lWkfzdTyTdFvQ3Xi87nPmVxplq2GH+w7aBo3+OfUXSYMg4obgo2Ee+9vrU0eZEm1E6/qGsSzu+8KkMqQvpAXFQTdSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Xrw+H4t2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5996EH71029042
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 08:52:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mz3R/+d2HRB2j4ZAAYNbKPbcU1+9mJalbUWZyK8B4cM=; b=Xrw+H4t2gQxnEgFS
	dxv+K9WlSIoBBBrj/ny7tiQn2lGq3Y+40pV21TdG40PO0bvvblR5bscNgV8ZBOn0
	NR5ZYiWL8QWFoguVwfz/fuQfFrppThsY3Q6L0ubkm6qsz5BlViVelyt6shk7GNjg
	avD6M4JFFF5Q7ZU3EEXJ3AI/QwJ9mtGweAHnTnft2xYkzftNm04PoQN2Jnbs0dtB
	PiXMI2iiKa+pVEaaVykHgKIiFJpoNi3Gq+3SzjvHtA0bqUvBQ6RsfKL74sJvSRbc
	AYFN1sIRcanio+cS6t5fRfrGcpOXBkpeoFpQ5OX2bXJdDG/WoLXi/SwnFEPSGQLv
	HNQbAw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4kt4n0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 08:52:38 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e0f9bedf1aso2578091cf.0
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 01:52:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759999957; x=1760604757;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mz3R/+d2HRB2j4ZAAYNbKPbcU1+9mJalbUWZyK8B4cM=;
        b=N+7b61aIU8J9ou9jjnatv4ToeCF0yEp+xcgMrOilTaIprZlWZwKMZ1WjTfe0s271fO
         tf75ujfbbuW3qhshJPCVDBiY0P1w+WVfg1pMT7r6Eix10d5BYF+LtkBHFN6wVvRAs9g2
         MLWyI+q21JFTorOhXLZE6R4M9tcvYqEvthujU33kEwWu6PmtLOPw8B9Z+g5EBlAye4nl
         fx9swynscUFUMJi0q/mM91xdjYjFo5CMmLtev2+KGEuXxAvT3UxpMyqoMHzW4Be5iMVq
         tqDtfiJBqC83Fd8XkhXWHN9998RfL/6bU7qe9vyHoIAk8eha+RxN1aqwzs093EJBKVph
         wJng==
X-Forwarded-Encrypted: i=1; AJvYcCVSsm01zJV2JzeEz7Bt1hEl1FWkJI9JqLLx4RQbUF8XwA1nyfNS84Huw38oifS4JAP3o/mU/eH/7KXb@vger.kernel.org
X-Gm-Message-State: AOJu0Yxt6JcZT2+RGiM7qaIBx0TSP7IueO65JqPISg9ICY8ClWZpiEIQ
	2XfTabH1yGiv9BsWTCYitAY6e2TnAixAulot1/ieh3IPsNg3nN6eQeW/aSy/C8zA2Nm+RljaKFz
	FbvK0zQTM22S1bV8k7+fOKlvya9PvsIxWRe+fX0lEZPqCp1jSbbt6GKAmPv+iWbk8
X-Gm-Gg: ASbGncvdQgD8y0mbbWtZWAqhPxmpBCw2CXQXeugPnlBRJaGsmhaM6RzITh5yHAjvnPN
	4pZ+3UOMrO/d6D1w/DsJw1oNstGmdrtrOn2YHHrVvvZWH3BvqZDzDiRNjtt59vTQM2VXSgeQ6Ec
	Rz/8yDDteQPx+MUGtQLfPM473uGKuGdKpzndUr6gaDLSCbaVMOLZJzVaR2I94/DKi5czBbn2Y48
	rE21adUU+yIX5oQoWgbxsrvRm32CGOuRunpLvY/smsZULVRiSlavUcBA0B0Hmfw6Eb4n1FMFIBy
	eeZf5AoEdoMcEptvO0uD+SI32r4xnX+80rLdsRSfUPYdmzSuvu37RDv6jyk2tF9PfSlqLiycBMB
	LepeAk1SQTqCu41BCvBf15U14w5s=
X-Received: by 2002:ac8:5fc3:0:b0:4b5:e9b6:c96 with SMTP id d75a77b69052e-4e6ead1deb0mr60152681cf.7.1759999957459;
        Thu, 09 Oct 2025 01:52:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEt0uEiEbh1bGs1o55s5jlT8wv6t3qr229hu5kTSl6GIzd3si4d6C3k4g7aU0DhbZYlQXIyoQ==
X-Received: by 2002:ac8:5fc3:0:b0:4b5:e9b6:c96 with SMTP id d75a77b69052e-4e6ead1deb0mr60152511cf.7.1759999956930;
        Thu, 09 Oct 2025 01:52:36 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b48652a9bfcsm1836499866b.17.2025.10.09.01.52.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 01:52:36 -0700 (PDT)
Message-ID: <3e115b9c-41b2-47c8-ac92-22969766ec3e@oss.qualcomm.com>
Date: Thu, 9 Oct 2025 10:52:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/7] drm/panel: Add Samsung S6E3FC2X01 DDIC with
 AMS641RW panel
To: david@ixit.cz, Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thierry Reding
 <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        phone-devel@vger.kernel.org
References: <20251008-s6e3fc2x01-v2-0-21eca1d5c289@ixit.cz>
 <20251008-s6e3fc2x01-v2-5-21eca1d5c289@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251008-s6e3fc2x01-v2-5-21eca1d5c289@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX0AKlt2tR9GS0
 ty15OA4DFbdoM4a6JTNBriiraV+TthnrenUl7VHXceDKge8jyYeZYx0BjsJghX1j6qI/O7bJxu0
 5SfowSyskpz1kDNvrAFccUMkAYaeSBb5Ievo+7FgOKD92gN292GyAkEZAFrjlfZWsqZzsufCqCa
 Hp25rqpojjxylGj7aYn/ToMzY8D5w2E3LS0uYmQPuMsHsHKdVQwwuZI+kduEtZFql4UDhEBmq5R
 TokXxfj8jFzyU1PdI0e5smJCOJ5D5lc3D4/KWK0CIu/0YjGecl5Oao0cY9HhFhzWkGffaUO0ZOB
 8AzUaLVHpVpN5mKUyJ9GSK4ATVuR2bFvJhSO9EWw0Wn2zb4CZcsqhec6ag54QkCCtrPMuBvc3Sd
 oI/1zp5e7sIpP7bmm3e4yjFjZiQ3Ug==
X-Authority-Analysis: v=2.4 cv=CbcFJbrl c=1 sm=1 tr=0 ts=68e777d6 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=WFa1dZBpAAAA:8 a=bBqXziUQAAAA:8
 a=cYgmbtr1Y_meZTC9yNIA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=MZguhEFr_PtxzKXayD1K:22 a=BjKv_IHbNJvPKzgot4uq:22
X-Proofpoint-GUID: lmcV6BxbS_XrgvsxjwGj_E1GnAxIcBnR
X-Proofpoint-ORIG-GUID: lmcV6BxbS_XrgvsxjwGj_E1GnAxIcBnR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_02,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 malwarescore=0 spamscore=0 impostorscore=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On 10/8/25 4:05 PM, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> Add panel driver used in the OnePlus 6T.
> 
> No datasheet, based mostly on EDK2 init sequence and the downstream driver.
> 
> Based on work of:
>   Casey Connolly <casey@connolly.tech>
>   Joel Selvaraj <foss@joelselvaraj.com>
>   Nia Espera <a5b6@riseup.net>
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---

[...]

> +	/*  This panel needs the high and low bytes swapped
> +	 *  for the brightness value
> +	 */
> +	brightness = __swab16(brightness);
> +
> +	err = mipi_dsi_dcs_set_display_brightness(dsi, brightness);

mipi_dsi_dcs_set_display_brightness_large()

Konrad

