Return-Path: <devicetree+bounces-226409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E2CBD86A9
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 11:23:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8C51C4E4167
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 09:23:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 434B32E7651;
	Tue, 14 Oct 2025 09:22:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QQW0d/3+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157902E7160
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 09:22:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760433777; cv=none; b=ain8MeGf9KOZOZoNI5T+uaJnwhrhjSyrNBt1uBgV32Hj3UAQiDBNUW1lU0bLEBLJfcJMEdCrgwn0G9Gpsu9s68oxrp6l6l10V3hmlYE+h2oxgbJPbMf4ySlXD3PMNxpEbAGhDs/VJfUjrpIL+5cw38xOzmJpKsehwJ1oDHJ+lIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760433777; c=relaxed/simple;
	bh=4kdH9JwWn5BUz8jMj6r/TaxLP/NSVJU/tJpy1sBaGwk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jMh0eYGO1wKxSHIeK/FcM+XY+U+4Ah5z5G/uV7jpwWH+U0hhIU+d7wOuLR6xaCtwXnt1I58rXF5S/B5ojCmJlhHmux6lhw/hU7MGjYbe3h/IZjKjaAvbxICqj570dMOdaxyLf36HJAVBkBtmzxtLpq1KPhLZRQkojMVmp8mexM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QQW0d/3+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59E87ImF001484
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 09:22:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pBRR5H2TkKxKF7H4pKihb9Oc+NcrIbt0tfqa5n/nEGc=; b=QQW0d/3+8jWCiqK9
	aXFu4NReDnyno1hQnDd9X1Jx11vJXCyQNNBumCgDiKLY0VZq6lJdEpMTmqI6cQRM
	uU/vTq3EwIHSOWzJj//TDDADPs5EtVlvLL7uyRRYkmvRv9hDI4qf2QyanIPc+S3p
	PP+n9huZ3z6atcPsfZS7gpelklaTApv4fjkZf4OKKEyE9j5k8GsSndCw0R9fcPOG
	Lgdam1Fl81MDIF3bSFYnnJIjdk5b4Oux7IVOvSEhUnjcSgZNygKhi0jhyGokAsxW
	Re/i48Izy0xnUje6crVmv+HE5mSiJdwZqZFpTD+WpOR06Q7qOmS8bm9kgr0xsER/
	ZSUiCw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfa87wv3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 09:22:54 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-85a8ff42553so251404685a.2
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 02:22:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760433773; x=1761038573;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pBRR5H2TkKxKF7H4pKihb9Oc+NcrIbt0tfqa5n/nEGc=;
        b=o9lrKh63gLQm8HseN6ccjVYI85lkeuBENmdsiod2ofzerLn8XC03fPO8NwjFLgx8u6
         POig/PDi2AejXNilNSgvnnhBA/bUuHRt+0Uoe4Kt50aSOqqCx2GAvOLX5YzBQqXczVVm
         hYZoOnlfsWt3wf4EkJC2+poUBoXFe2aZHAZ8BIfC5fuIYfn92mfwQ8U7flTJdIYheO1S
         06KL86oeRMY8xeuLNSgUP7Gpitm6rUKJCrqgcUJGU+kvpoGkMvxJHkhPdnMrOwWzzHXX
         aTUmPKlrPeiyLwyeSEmYSwcCCnfjaAPMq+kxfxeGu0awKBuEGbou8cWoCerFB0LyjssU
         4wOg==
X-Forwarded-Encrypted: i=1; AJvYcCV/MT6cVaQi502tNgJA6Xokav9jNF9Gti1R4MQMo4PgkMqR9q0TTNMgeln7NchuWfx0HcAoTra/xXzI@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/3sHdyINWaa8QKLUiDZoVzxsMC1rxtJJtw/11sjKLv3Pn0Q+V
	aE77CWkPB3LUXVXvNINlqqeTHEhLgZUFjhj3IaT2WSlUnPgdApeicdoS8aYvrTw4MPDugQpCrwQ
	qeU/IqCeKSu9Z16bjch7WdlURozeBs36LpSX1pCEH9JmUJcIxuv8ea1IUEt3k6Cir
X-Gm-Gg: ASbGncuPFfUQND54sHX+xFazE3mRdDjuxGSzOt8Gm5DGTksNt/bsdWn5moj3beucmEJ
	haigWwedniuqfW0es5IUNSjCFG7m1JjiRukjKTsrHVz8tWEdsPTMT+SEiVWh+DSL5b0FjLJkaG6
	fBhRwn3JPnbidbsCiQilIp/p990jGGlz6PppFEqevwHGDBsTEMKK4PPdE3nq+nEM+nl4y/P6+Nj
	i2CXXcC4NQlQ6DnrRHUIBhCk6HutveJNy+lG83kn9VKxzEYjTw/V+r/MPh8R7imZYXSdE496e5h
	gbL6mUoqEU4a439KzgXHiosvUZ4bQiQN1+cVn9zNifKfvFlHRxUQsrH+Y89z43tREvj1xWQbc8N
	logyjCQ9CdaCWRK6Q6ZHPGA==
X-Received: by 2002:a05:620a:bca:b0:862:dc6c:e7f3 with SMTP id af79cd13be357-88352e8e8eamr2066568485a.5.1760433773152;
        Tue, 14 Oct 2025 02:22:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH6lBPtCjgj5B0ks8xM4dqV/qBR4R1q23vBYNJs1dE8aUXN8FmTT9yYWz5xoRUNmm6qC74jzw==
X-Received: by 2002:a05:620a:bca:b0:862:dc6c:e7f3 with SMTP id af79cd13be357-88352e8e8eamr2066565785a.5.1760433772666;
        Tue, 14 Oct 2025 02:22:52 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b55d63c9a3csm1127034066b.23.2025.10.14.02.22.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Oct 2025 02:22:51 -0700 (PDT)
Message-ID: <87650853-3b4e-4a05-b3f3-4fcb8820ea9f@oss.qualcomm.com>
Date: Tue, 14 Oct 2025 11:22:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 2/3] arm64: dts: qcom: sdm845-oneplus: Correct gpio
 used for slider
To: david@ixit.cz, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Jonathan Corbet <corbet@lwn.net>, Jiri Kosina <jikos@kernel.org>,
        Benjamin Tissoires <bentiss@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>
Cc: linux-input@vger.kernel.org, linux-doc@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, phone-devel@vger.kernel.org,
        Gergo Koteles <soyer@irl.hu>
References: <20251014-op6-tri-state-v7-0-938a6367197b@ixit.cz>
 <20251014-op6-tri-state-v7-2-938a6367197b@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251014-op6-tri-state-v7-2-938a6367197b@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: JNxJvXhdYroJ1dgNNhNKZbTnGmKb8zT6
X-Proofpoint-ORIG-GUID: JNxJvXhdYroJ1dgNNhNKZbTnGmKb8zT6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxNyBTYWx0ZWRfXxPwdAB31HiuP
 EMO4wjCp5Y9w09vneoJAfFmv9qGOqSt+3GcV0ymtsr252GyKigm14bpRMFJ4eONVYOETReVQ1VX
 2GncJ5/XrA+5hxNlVsUFA9cu1Vqjuqol7A9arXz1m6xOgbpRJaaSqurZiEg5VB1iQMZCJasjYgq
 4XB7Or1I3iqh2+7Oy/4nwW3PKIkSYea5iwFvV/AQQIMwffsza0Klx6BdP5L9Ew/7bDrJEsZ9yMQ
 ZaYYRoxdnGnCWBodqoa1zlO0YvlIl7s/AMOfgRim0xO1ClsmyZs5ihrjuBFIOUdCx9e0021OMT9
 /k1Opz+w5Mbavk0HbaibDcbSardcpXPS02MXawoXsmElvrKxWJNN5fluSffGVfddCh9j+1xC4hb
 uAjabQFIa1eRke2u9GQvVbSccXK9DA==
X-Authority-Analysis: v=2.4 cv=JLw2csKb c=1 sm=1 tr=0 ts=68ee166e cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=b_3gLtI3ev4ASzC4froA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-14_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0 priorityscore=1501
 impostorscore=0 suspectscore=0 malwarescore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110017

On 10/14/25 11:20 AM, David Heidelberg via B4 Relay wrote:
> From: Gergo Koteles <soyer@irl.hu>
> 
> The previous GPIO numbers were wrong. Update them to the correct
> ones and fix the label.
> 
> Fixes: 288ef8a42612 ("arm64: dts: sdm845: add oneplus6/6t devices")
> Signed-off-by: Gergo Koteles <soyer@irl.hu>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

