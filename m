Return-Path: <devicetree+bounces-222106-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A72CBA5EDB
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 14:23:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 251E4179CA2
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 12:23:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF3E32E0B74;
	Sat, 27 Sep 2025 12:23:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="a01VMscc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41276146A66
	for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 12:23:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758975800; cv=none; b=DiUGdbOaT/u1MCACBMBiP3Vk71m/7xyVWdJH8t6OBmMeeWJJhGoIv7QkppR9c8NyhEIGXGDrWTd82Ca7Z35NGxvJIxmW5cZLCMys7S5x0d9+csnGTjzVSQsqfahAdc4WrWob7772C30oYlVtLV8G+soILRP1vThJyLNtStxmE5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758975800; c=relaxed/simple;
	bh=tEQnL8W16BktNpUVtLbw1mUzaFJqK1i2+vMuSRTj+yk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Yi6x1LHPKjJ41KOdK4d0z1cv6/Grn1qEN9FiBssHUNYGuBZU+8ZL8K2wkv1BzYmrKl/nYlS/rWwQo1byx/hhSGHG8wg+VQ40bhlMXXr+q0NmKGn9DUySEyGDQq2bDmP6KFq7Im13WteZZy2E22c3oDm1igYrwE3kxXQZxh8NRnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=a01VMscc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58R8q1YU029920
	for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 12:23:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tEQnL8W16BktNpUVtLbw1mUzaFJqK1i2+vMuSRTj+yk=; b=a01VMscciwbi+pAN
	e77+26oRg33yebQSbhgvPtsfMK/9ydh1rZeoTkyxnUPId7/hDL3F9An29h/Wkra0
	regJvyh9/elDRI7+vKwWFSUVod2jtXuYdqwdzv7OjkTwGUW6NQoLiJt6OQT+OeTG
	X1XZQja+TwfYBWvq7yObz5gxEfkYhAmIFtxWGGT1bJNbLZq11Jgu13Hq4yH2H8HC
	cfYpsclFEEdAZTxiwbWFOLM1e528xAf8Hm/ck4wt7Vjqq0negRqTy0tIIphbTMXS
	KBqhxk2+Ci4KM7p54Rl8DaHKXXlcoKzPuSP9YB8JOGLVVg/evLpkG46UgMeueBpg
	JmP9/g==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e8pd8mns-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 12:23:13 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-798447d6dd6so8266906d6.1
        for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 05:23:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758975792; x=1759580592;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tEQnL8W16BktNpUVtLbw1mUzaFJqK1i2+vMuSRTj+yk=;
        b=psriZ0Ox3BcxxbvIYgtXT1re76etSzrqiIEZA5Qyiit94goO7HUAvVnOEYmRy7AwJA
         lVVxmtQic172VB1NOP+soWwzX+56xI1Z8+DIrlmZzv2HYb0Tg9LLJKb5ti6jACtchvQf
         zlkNBiDkAia3jVGDT1GSz/60wzTjcIJeLQ/Qrfla0XEZ69mmRu29rHmJ1AwwHucwaMvT
         IpYE2NDFZ1k8f+9lKR1zCiEE2uOblveWqaQEtCX3XFX+4APFkMT92uffaJgWJKni7stV
         ELEqq/WMhWm9Tfcb5zqaZL70wO/SoB4HDo24vp9G6n2faxjyEG/scUeEdEAB0VIn0oz9
         f2jQ==
X-Forwarded-Encrypted: i=1; AJvYcCXNYdfvTjKAtU+Hw2zMsjWMZw3XjmyVF96XHvOe7XsM/VTIuPP8DFq2e2WKc9T65MW4+I9mXfcADVP7@vger.kernel.org
X-Gm-Message-State: AOJu0YzbM6i+YpiUpgcrMpFIeUw7J6BNWAZZojkRxiAbVe0/v9vcS0ow
	Rp726EKQTheP2IFEUJbXwwLQDFJtOAjpiilZ/j1EuDK0kh/RTm1G3zFodtl2KhGEbQ2ER4xzLsF
	Updsmr0RgLbua1Md+LXa1ODkK8HU72r+nyduBBe65GaqnzvwHnHky0sFHNRZ4cvIR
X-Gm-Gg: ASbGncs8SEGskhbZk9ozH+73xj7sU24ARXhoy+4Ol7q1fiI062d0o4kqa2iAtnJZ7R8
	fLo5kJ5rjQiDqqcL1VPiSW8BwNNTnentAT4PPD9qV908Igtcd8Ats4KHWrkeilDoGwv479mzVBL
	JywlZzqqTmNPY1RjL9Zs8zWq85ss3xuLJ3ejr8sKsydyzQT+1gowP3fWss6LF4tNn8HjTEO6i4A
	aXKJ+Lc8nD9YeyUdO/NcseKLsxDFQFpIqrV9Q0jAFu8EowbEn/8Uzfw+Aov2IcBwBsXmDthnuka
	CoNFLEpN5wE2DM86Go+VrUjZHyU8nQTLsTaMbIYE0hkzVXahJGlPAAO1fhpg4D34nw6Oh/cgLOa
	ZZYyIpLVS/0oR9T5WPo05BQ==
X-Received: by 2002:a05:6214:4118:b0:734:4ca1:1da3 with SMTP id 6a1803df08f44-7fc45177beamr94137496d6.7.1758975791858;
        Sat, 27 Sep 2025 05:23:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFdOlWd1gQfnVb9WrTWg308MwtnwbvHVNGmojxMzFvYHfgXbWu/S1dqssJ3dgyFbACwHn5Qlg==
X-Received: by 2002:a05:6214:4118:b0:734:4ca1:1da3 with SMTP id 6a1803df08f44-7fc45177beamr94137306d6.7.1758975791388;
        Sat, 27 Sep 2025 05:23:11 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-634a3629584sm4335951a12.6.2025.09.27.05.23.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Sep 2025 05:23:10 -0700 (PDT)
Message-ID: <764bc5f3-4387-4462-87cc-d8787b1be0ce@oss.qualcomm.com>
Date: Sat, 27 Sep 2025 14:23:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: x1e80100-asus-zenbook-a14:
 Enable WiFi, Bluetooth
To: Aleksandrs Vinarskis <alex@vinarskis.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>
References: <20250926-zenbook-improvements-v2-0-c0b512ab6b57@vinarskis.com>
 <20250926-zenbook-improvements-v2-3-c0b512ab6b57@vinarskis.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250926-zenbook-improvements-v2-3-c0b512ab6b57@vinarskis.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: jVK6oaHpkYgPtfGmhXnRyH84bOeZsPzO
X-Authority-Analysis: v=2.4 cv=MYZhep/f c=1 sm=1 tr=0 ts=68d7d731 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=Wopnb8ls170qGKoNrAYA:9
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: jVK6oaHpkYgPtfGmhXnRyH84bOeZsPzO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzNiBTYWx0ZWRfXwB4efZTkuk21
 bD47nosugb1VE6nSspr7Ag3AUOvB2mz8QpGiaCJ0MIRhj+W8J5QZADBXh8LCdI4DDgEMQeYmsUH
 fNh66q5gBXFkQUCYCClD4Pg26aS6mYGuDkLZaM0tTzydM2WkFXwAolWYzHRWyEQhLhvnDUbnEWn
 vZ69JNEFnNvJgbi/ZiwQJ7Hf6izKl9lXhY9WX+DyPlWalg6cF65BwjHFxooln7m4TwZW9RX50Wl
 RLa9MhH9BmMHSjq/DTknyDSkT0SrbsztJiVhaDyqeU9TdSuB0seA+Du5Fw9SollNOJmFx5Qoc8y
 bJDGBy2N8bC1waPoEBVy6B7byYBKuO7nqyTI3hHwCUhstscB4TGwXLOYHGuX+GVnR+U9u9CN4rq
 CSdbBfjaQRbGVDhf6mMbNZuFfkSqZA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-27_03,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 spamscore=0 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270036

On 9/26/25 9:08 AM, Aleksandrs Vinarskis wrote:
> Unlike UX3407QA with ath11k, UX3407RA comes with ath12k. Definitions
> were not added during initial bringup due to lack of hardware to test

ath1xk is the name of the driver, WCNxyzabc123 is the preferred way
to refer to the hw, as that's the actual chip identifier

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

