Return-Path: <devicetree+bounces-236739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DAAEC46D20
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 14:17:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C53E43438DF
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 13:17:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 633EF30F946;
	Mon, 10 Nov 2025 13:17:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OvY3moLp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZTdXay+u"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CAA01E7C23
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 13:17:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762780635; cv=none; b=MK60NhxmlmMoyGBRGABxromKUQ/ZIger+Ryw4uwtX0aw3bSbsdoUn08PgoA0TeXObcLxlpscfrx7qq2zdPpyY/jA+C+G514KFja0pknV6acX/xezWaT2lhsbWqT055o6SjssqToq+rvK8iay3AMpqiPLufPSYS1bFOnnJJIUWPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762780635; c=relaxed/simple;
	bh=Pp8sadZa6Fs6HKKvmeIz/tCuyq6jNOOSo/X07LKN+cY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hLIayIutc2H62+l0Cd89aoquYsmeiorjqWOmPwWwuZLWTfbAdfr0nRUStbVT58FSAwMRsy6UgPlEqQx0KIjqKfi4XgBMKx6pPZclkPvTDbjrYisexsVxZVO8XeYYBCkLwLpz6M8vp8XUNc7OwDXDfN17OPO14g8R3T3uB6rgzlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OvY3moLp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZTdXay+u; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AA7hSAY2861647
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 13:17:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Pp8sadZa6Fs6HKKvmeIz/tCuyq6jNOOSo/X07LKN+cY=; b=OvY3moLpUsOteqmG
	7FaRwCntbyDcESMa9uIAqudJib2CAr6icWKX7xY0rNOroYd+ksfRylKfEuP7/rVE
	qga6hb3W9zSlH8inJFBepLe6X5L6LzVLoW2/+ra30IkQnWVb72O8wGnOd5BATPCq
	bF1AL/cV8b2MQqOxYwOoGHJJwuI6CVG2QOqJNCX/rQSYqP/bBmBVDK2RJics28KB
	vjVNFoFMf/lLkFJgCLX56SpqkjZskL53C+tP3Xikn+DU0g93lwmECn0jnF3tj0cz
	g7/qYWaloHL67MWQMaCUecqToxFNX5wQRV3PDLiaZH5VidrU4ZT8qKS19761oy0A
	E9b17w==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abbwe12kr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 13:17:12 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7a432101881so5419035b3a.0
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 05:17:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762780631; x=1763385431; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Pp8sadZa6Fs6HKKvmeIz/tCuyq6jNOOSo/X07LKN+cY=;
        b=ZTdXay+uzxfci4YByhvlHrvvq3VidpEP+eUL/aPIAOxmaxJO1KQv417UnVZ0bjwjHj
         IyJIIDSrxpcOZx94MPKSuW4y9ZgYikaGluE9eAQFcvFzUKlr41+PtOarnGjCT9K+slF5
         LUpU9rM9GoHSSKxqAqk10g4ZjH31HE47sdZwFEOfgJ/h8CAXVgCOUIrT3xG+dPGpYCxa
         wIZWpDugKQGM6kmBEOPNb9lTKLDThSZ5YNcBRox1HRvvRMGkvRNEOz55BwIzSZv2qkLU
         mPeQHh46p0AeV5nPmwd4NEes2eyOmqqMvhHHtVyIjVudcYyYzo24GHpA6/ZlnZpN4KUb
         fQ3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762780631; x=1763385431;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Pp8sadZa6Fs6HKKvmeIz/tCuyq6jNOOSo/X07LKN+cY=;
        b=Fy/aM8IqpmITnh2Mtrrfe4BBRysEuRCgFP9WxwW3czNT0eThcvdg1xK4K+ZU3pH/UJ
         +h82qjt1ZpMg8haGTuyDzn5QLg550dIQTlkwSnXgyv5f5WDgHAHL3mU6Ku6BFpkYDd9b
         30SGrhlVW2oKkji9F4M+vmUnyH5fOl+9ycj1rogNqzTt0pcfRsQJURJktCgFVm4I1+hw
         yq68x45h5zLNnR7AOoz7cgCCrZdg3Z+PmmUr4Y06N+EX+GjnNdXiz+5KP5VPzcR352o+
         G2G8hOOFM1OoSRUCAn1rh4pqRS+DLBo2EK8emkL1ln1OkfTgI2MJ++xflB7mEt9VfABE
         1A2Q==
X-Forwarded-Encrypted: i=1; AJvYcCWRUQZs7HQrFaTeEYoBFZrWYYEPzSK4i0bBIFgTdxbzBY+Gh620W0lUZFGF7nLXRbprDDr3LDVYgQgB@vger.kernel.org
X-Gm-Message-State: AOJu0Yzw6s4YbYglxiFTVCfiF5fEbsbFGwvm4yu5WW6/Ei2oryJkspH9
	6KalniIogayIlhUH65I8FflgFTuuSLHHPHSKum1YEj3CoL/Q3IZhRnYafZQsGmeJ8H7yvCi0Obz
	97AApX1DAHo9ojp/8feaxsQH5JwU71aX+cky6RId6WnDW3YzplTaW5yzI0grTkxiJ
X-Gm-Gg: ASbGncvX6kSoDHSX0X/lFZ/ZfDcOabt+LpXqP/tI7nE9SryoYBclJgafTTq8hgKihx/
	hjQC2P153GfJQIRJGClRAEEFELASS23+LdKWIPMvpnGerA5CgmKpj0r5lq8iaOgOk9T5zdHqPL6
	37rfTdCAWwMTFYCbIaJyJvHDa7x5+ttztQa6gv6aHattR2mvzlsEo04d35GQASBD82wC1vywFiW
	THN5EC8WocmEaxeyHZQRhsoq9/sqFubY6ShI5hwbLCdiqPsQZavgy3O53b5YToBJ04cDxxw3Hs3
	ar/9MDvF/RrQdNXb774FXifAA3s/3+FlkBmnqzYQV8CskT/4BWjEbI99hEcyteCiH7rHJlneuDU
	vpmtI6hJklXERfGlcCRGp5ssTW9FeN8vI
X-Received: by 2002:a05:6a21:99a0:b0:33b:4747:a258 with SMTP id adf61e73a8af0-353a3c6009fmr12911297637.46.1762780631418;
        Mon, 10 Nov 2025 05:17:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGkxP2hPnDoM4zia18XuhPq48JzSy1cdEh/jpvEdsdq3YcmavDKiIkTcVKGhtOOp9ROXx9gMg==
X-Received: by 2002:a05:6a21:99a0:b0:33b:4747:a258 with SMTP id adf61e73a8af0-353a3c6009fmr12911218637.46.1762780630744;
        Mon, 10 Nov 2025 05:17:10 -0800 (PST)
Received: from [10.219.57.23] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b0cca5fd74sm11778345b3a.58.2025.11.10.05.17.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Nov 2025 05:17:10 -0800 (PST)
Message-ID: <4fc9c7cb-72dc-27a2-deba-4fd3eabb1fc6@oss.qualcomm.com>
Date: Mon, 10 Nov 2025 18:47:01 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v17 01/12] power: reset: reboot-mode: Remove devres based
 allocations
Content-Language: en-US
To: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel
 <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Andy Yan <andy.yan@rock-chips.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Vinod Koul <vkoul@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Moritz Fischer <moritz.fischer@ettus.com>,
        John Stultz <john.stultz@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Andre Draszik
 <andre.draszik@linaro.org>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org,
        Elliot Berman <quic_eberman@quicinc.com>,
        Xin Liu <xin.liu@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>
References: <20251109-arm-psci-system_reset2-vendor-reboots-v17-0-46e085bca4cc@oss.qualcomm.com>
 <20251109-arm-psci-system_reset2-vendor-reboots-v17-1-46e085bca4cc@oss.qualcomm.com>
 <CACMJSevoC3xYoeodGYnY4_EFSexqbNLqT_7UbRu9DxDRx8_gzA@mail.gmail.com>
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
In-Reply-To: <CACMJSevoC3xYoeodGYnY4_EFSexqbNLqT_7UbRu9DxDRx8_gzA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: _dapNHOHPmPrVSMjjiXP70IxqYqDy62j
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEwMDExNiBTYWx0ZWRfX/ampta3Ksi+R
 jGi0I3R7uBJ+eMJNwur5qbxI/7BjsfYAbjG455TzQ4XdX9htYGTXxN62mQFgOsGfbUjc8Qpzdzm
 ZwLjZrKGVSMw1AxM5uv9lojO2yf7U2ZunomM59h62uQ9cy89fwlapBteMzBgaTM7fwwY2Ycg7kw
 DnLGzUUAwXzcRVdMcNrX6mJcQnQ4x/fVZZ9+lf0xQ/t3A0cx9pR3aOJTZsMm4gUa/UM12JqQKdH
 Wb1H7j+FMhYI2slL5Gb5C5rB0lv4ZDsENeyF9Gj92SDGKbL2eGLdGRLw6/NjNCT+6IFf5KJXTmT
 FMiq89+23hnJoB7E7j1Ve5c5o1mTZTgGkrcNtQ/5Ltiw2Kg75JSzSMUks4TX8Rk1w7ndcp+fDMY
 ybjoQGx0+NdrGMO2OHbImi/RdSAC5w==
X-Authority-Analysis: v=2.4 cv=GbEaXAXL c=1 sm=1 tr=0 ts=6911e5d8 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=OnlfXhMgL6LeeRaFfUwA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: _dapNHOHPmPrVSMjjiXP70IxqYqDy62j
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-10_05,2025-11-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 priorityscore=1501 phishscore=0 bulkscore=0
 spamscore=0 adultscore=0 impostorscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511100116



On 11/10/2025 6:40 PM, Bartosz Golaszewski wrote:
> You're making it sound as if there's some race condition going on.
> That's not the reason. They should be avoided in subsystem code
> because you have no guarantee that the function will be called after
> the driver is attached to the device nor that it will not be
> referenced after the managed resources were released after a driver
> detach. It's about life-times not synchronization.

sure. Will correct the language and make it more clear in the commit
message.

thanks,
Shivendra

