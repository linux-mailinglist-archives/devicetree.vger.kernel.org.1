Return-Path: <devicetree+bounces-202664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F88B1E521
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 10:59:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 60EE21634D9
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 08:58:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5255B267B9B;
	Fri,  8 Aug 2025 08:58:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Tej4IWsX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6558266EFC
	for <devicetree@vger.kernel.org>; Fri,  8 Aug 2025 08:58:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754643507; cv=none; b=r4X257Z00Kh88/cvR37XlYzFuDOau4cFKUs6NhSlIy7uBwnpKsh8uM9I7lZk0BS9Cz7l4P90U5AYdSqDF3qb6qyHJO6lqz31/mmY9XtdJY3ltxNO1kvkTGImP8ckUm/gOfw2GsEPiO9hSY9kD/P1eKSN5YR/zZ/GRB7pJCLyvMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754643507; c=relaxed/simple;
	bh=t6DFxcyLHMC844tzFgeCODmtYEMwsh8pJywnazP2Xqo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JIgkejmZMqW9zLqKutZIuzmuTWQKZ0MM6nnnh5gOyzapUoljfr/km4m27iCU0IsP10VwVJZxkx4iRzo2quojqU41pQgn2W9aFmYisgIr412kh5KxrCIzTNTTUThwg34J0l/t+kKs4MoQQ0TaLgEVZ4PFytDSi0npAW5jSGbdpvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Tej4IWsX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5787Oluc012665
	for <devicetree@vger.kernel.org>; Fri, 8 Aug 2025 08:58:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	R6Q9n1VBcmPjQskeZ/W9TfLHZuyYCWbxE9Bhoq5xM3o=; b=Tej4IWsX+JmGeVih
	QSTcVIuaVYUBxkH2Im54AmnuSffT3Spd1cVyUYPXW8bkSPidIuSLIGmbl0kGo2vz
	k7soJ6D99KF8nTutfdtUlYm75nq8UFgTkWohLTcaNCLAlll2DDDWrOLmlSZDmwrv
	ka6YRXkaylQzKU7E4/W3s9GYhOKZ6r45OFhKMgGSJv7mKy50uTpJk3QqPB1Br70m
	xFqMc+l9ddQW9j0Qb0AuqHqyBmx+AVyjsyDBe4E+a90Gb6qLOZTNEC9OlsjzJ4aB
	aaaT+xbR7fff7DjR17v6OOexpWHE4KE0HiW4BzLu4HePwZfh+bgjw7IoyHUGSETY
	sW/bbA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpybhh2w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 08:58:24 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-7073ec538e2so5815986d6.2
        for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 01:58:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754643504; x=1755248304;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R6Q9n1VBcmPjQskeZ/W9TfLHZuyYCWbxE9Bhoq5xM3o=;
        b=bauN9P8hDi/caOCzKABEA9RqQKjLQdRF9oFKCtk0aD/K4m3dPJ2wYoRvT9U1NirKnw
         IM6bN3s/0lGFgQ+p6uvOCbLAmSWZI2NFTifd2XVB+BlMrN6EP6ggFt3ukRjh8KefOj0i
         Bvb0vx+zjB1QJ6gR8JHdKh6jq/+BE3n35A+UJvNYYtx2i2sEbUdeSO+fBDaWe2sA3lN6
         UM1jTWs76fLoW+0RgmYmKI6Jyy2N5y6bWHDfyuKrYSsdGshuHqMGX8ZyK7DQ54wyBrOO
         2sB4+KAJkXEsg0LEKwBXMwt2gTU4A8FA3NDBxeeptyakLGYQw3OGIRxxCG3E4lAFpZRy
         SUag==
X-Forwarded-Encrypted: i=1; AJvYcCXTT0kP5yV99uUIVBTIAXZz8glHeJEjfES+U1HLTiMqhO1vSSLr9Cav8uuGuvbdP3VIwpKiMwOTcbqE@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0+uttE2JBU9RX/KbUHUfwrfOUu9zVLSKOT9OcvG5REAu21CwY
	kzqo5FFC/36gN5YL49c4DTCveksFnQja3ND5fzjWSLxfcLRdTkNARPuzc2jyvNYcMgdcodQXfsV
	0wl6sZls3qRdoiSBaW98sq4+39dyFbUGjxCfFUSsT+4nF9ZD0WaeldGp+30r7yD2G
X-Gm-Gg: ASbGncuEgJr2R6yl8v9BbC6GeozNtUHEVEwbFN0lEh5LU6i11TeNNkq3ZlbEScItygR
	xSpBPj+SpeINle/kiDiOYcjEObeOu4+4i10jL50UtUGX9FjIh/qq+dKqnx6iK5LCqkFQbJqn8GR
	F3UmOHGc4Lv9j938H4AwryK+hVvNoT/0xCOfDORpQCL5/aljQ7UcMcK7TPb3K/X5whUORPXbUPi
	/2gO5jxocxx3lAuRlFb4C7cFBqigMsWTc12saNOqYbeE9LMzUTrlUK2XWqzPHmGOkXkhZE+0MDF
	TNZtomnv4JUc8LRMxiLmZj6iuUMGH+7BuSCryimdL+az2gDQMA8VTmoOZyOEmXDY2lEuJ03g2R6
	Ghcud5Kko1nxVFKgaTQ==
X-Received: by 2002:ac8:7e94:0:b0:4ab:67a3:ec09 with SMTP id d75a77b69052e-4b0aed20c07mr17186161cf.6.1754643503758;
        Fri, 08 Aug 2025 01:58:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEh16OD+ZoyT6jx0iozIhaDryFGFQR4TtUyX+fYll//iyn3c+QGTMne8GP/ly3AC+UnMV9iww==
X-Received: by 2002:ac8:7e94:0:b0:4ab:67a3:ec09 with SMTP id d75a77b69052e-4b0aed20c07mr17186061cf.6.1754643503317;
        Fri, 08 Aug 2025 01:58:23 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a0a1bf9sm1460998466b.31.2025.08.08.01.58.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Aug 2025 01:58:22 -0700 (PDT)
Message-ID: <9af71063-0629-4ccc-bc76-3fb588677bf4@oss.qualcomm.com>
Date: Fri, 8 Aug 2025 10:58:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 2/4] arm64: dts: qcom: sm8750: add max-microamp for UFS
 PHY and PLL supplies
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, mani@kernel.org, conor+dt@kernel.org,
        bvanassche@acm.org, andersson@kernel.org, neil.armstrong@linaro.org,
        dmitry.baryshkov@oss.qualcomm.com, konradybcio@kernel.org,
        krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20250806154340.20122-1-quic_nitirawa@quicinc.com>
 <20250806154340.20122-3-quic_nitirawa@quicinc.com>
 <20250808-calm-boa-of-swiftness-a4a7ce@kuoka>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250808-calm-boa-of-swiftness-a4a7ce@kuoka>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwOSBTYWx0ZWRfX+3EwdbZg2JMu
 f11q65A0FM8PO5wB2ZwAYV8K8gvSNNHqrAtqFeKzax4ea93IEgdsUp20U6NePSNG53kFkW9R6IC
 Vy8nDzEVK7vVeXOZ0LHIpvIoLnivuanXi8aEkeBIajcI0md2hAdxXFmOV6ufRtKpNvLism9qpKE
 BzZThhXFV8txh0PJK3B4RDgqY7QyDyvW8ZGtqfjY9ZC1LEX/oUhbg3w3IaRy9NT4v2iGSeQLNYr
 lt9fys41lc+aAfvP06m1ih9M+4lxOpGretY8TLsNNELCPgt2gI0ZR9ls8zrCJFyG7i5J0hBLWRE
 2nSTsKWP5NNcOcyXAgTKfGeTt8IHnuZoZdI1AIIuLK/gMwiHVGbmXwUtr5ynriu88Q3BfCGwmzp
 cMCBcPn9
X-Proofpoint-GUID: 3RmEGFr4osUHxrf4GdMPqcEzIUqkCZKj
X-Authority-Analysis: v=2.4 cv=EavIQOmC c=1 sm=1 tr=0 ts=6895bc30 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=WmDcBHyyyws--uAXJ9AA:9
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: 3RmEGFr4osUHxrf4GdMPqcEzIUqkCZKj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-08_02,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 priorityscore=1501 adultscore=0 bulkscore=0
 phishscore=0 spamscore=0 suspectscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508060009

On 8/8/25 9:29 AM, Krzysztof Kozlowski wrote:
> On Wed, Aug 06, 2025 at 09:13:38PM +0530, Nitin Rawat wrote:
>> Add `vdda-phy-max-microamp` and `vdda-pll-max-microamp` properties to
>> the UFS PHY node in the device tree.
>>
>> These properties define the maximum current (in microamps) expected
>> from the PHY and PLL regulators. This allows the PHY driver to
>> configure regulator load accurately and ensure proper regulator
>> mode based on load requirements.
> 
> That's not the property of phy, but regulator.
> 
> Also reasoning is here incomplete - you just post downstream code. :/

The reason for this change is good, but perhaps not explained clearly

All of these values refer to the maximum current draw that needs to be
allocated on a shared voltage supply for this peripheral (because the
supply's capabilities change depending on the maximum potential load
at any given time, which the regulator driver must be aware of)

This is a property of a regulator *consumer*, i.e. if we had a chain
of LEDs hanging off of this supply, we'd need to specify NUM_LEDS * 
MAX_CURR under the "led chain" device, to make sure that if the
aggregated current requirements go over a certain threshold (which is
unknown to Linux and hidden in RPMh fw), the regulator can be
reconfigured to allow for a higher current draw (likely at some
downgrade to efficiency)

Konrad

