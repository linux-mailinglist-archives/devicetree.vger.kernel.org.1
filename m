Return-Path: <devicetree+bounces-195590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0088FB02325
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 19:50:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E98631C4818D
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 17:50:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2526A2F19B1;
	Fri, 11 Jul 2025 17:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gApSY9r+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EB86155C97
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 17:50:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752256223; cv=none; b=dF1oi+RXNf2gZkRlvMv0Cq/kHRqtdi/T5JAgg6P9OQvniuxQ3MAwJP4WZxh332vOoTDnoB8PTie9bgb7PE3dz+JBx7ROeJw5yJlTOy8eBhDshiNDlN6Va5kmY0smbrD0IiutQFVizkwsOBuj4KMJUgE1fj69FsHhfGZewPgsETE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752256223; c=relaxed/simple;
	bh=86r/sDTlSeSMo/+bzTvTxRRnHkxkb+sDRT3RGVt9qwA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KEhZWoVcYqQXuM5bfd/5HUHmuqzzX6feZVmNeULqtPUKwWDueUw3Z89DbvNq8QXG10yZmFlqZ0/DfCc30zKoaGRocjj2KFQfD1iG+QeFXKbgYd9AcBTtaIuMhcnSB8MvKxUZ7ntuxh4NfOu+Z23zAXmZphSiPhG6Knws8IjyZCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gApSY9r+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56BBGR9c012022
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 17:50:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zODF07FEndKVYerePzf13yZa0v9IMBpC/Vm6umRGgcQ=; b=gApSY9r+2eAhMTb/
	78i0vkS9emlIFK2N5TD+V0KqbqrE+DJTruHeob27jHnXjtuMt6rEH6OnMoIKrZxX
	3Jq4Hr5MiTU8vX6sUu6IL//2V4H3anIsaXpeuOu0QaYGh6EQ5x45kEy0GonU8Lv/
	nLN1jzwClGo2Lr3s2CEXqhRwP8bFtWyp5WkI8xz2IMmP/8P/jxUqHbb+orW6fkJb
	WtBbHDz+O9dVEaTTVpNR3QLe7fR3brxtWx7elNWmJgiibuy2YvnEBP1TFmDrkja+
	dCF80k5Kjn7KMZFjQb1pJYRpF25bm1DDZDkX3l+rxZqa+NFHLEzIEUJvOagwF9/t
	k90SgA==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47sm9e1dh9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 17:50:20 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b3ba7659210so1767296a12.2
        for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 10:50:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752256206; x=1752861006;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zODF07FEndKVYerePzf13yZa0v9IMBpC/Vm6umRGgcQ=;
        b=JMWZV4SRX5MBMjY1tdQciAWBODvtYf/b6eYXTv9XoPiH4EdD9Wk/Lt2MHC48H0pGCI
         fxMWDhhGteoAluIDfqCPxANBvvODHg17YXm61fSrwqpp05O0E4GcGIUGNt9QqydkabXx
         lc26nyklG4ihwOLxwPiVn/aiIzWSzYZTwWzM2IQayw0FZAyTCezHKP8uEzh1dcULXuVw
         6U80JHRsYdrTbMn4IVdL+6XblswrlTYi6Y8CTN9g6bdQqS0sdib6eUar2vGs47709Jki
         2f2H8j/+ihTXX/RRpK1hhlPJnlQ31Cip0o878qdersCdfyi7ru+YVCFXXymYQkaNW/oh
         rHuA==
X-Forwarded-Encrypted: i=1; AJvYcCXAsnC6cSDgQ5vg0Wo+8IZcbQ4wBfisHdeDihrS30s2Jav4DDQ0YdIOcX5LIO60q2ihpW2RWpSsxCoS@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9h5cpTKtAQfrGGgGY6IMXCTi+61kDnh/kDejyybVbzam1H1r1
	vwor0oJgPrtjiRhE1e3CX4F53CaQwwIcvbRzT6TzVlsxwVNOdv0m7Y55QJdjbr9v5JyrUNDbB+n
	4T0HrgZMUfUX3wD7FUEChoOMXUHdCqxCS5dJQsJz8RZIEmUdRTwEOiA97ZhrILpKW
X-Gm-Gg: ASbGncvbVFFD1VmNKdr3zQRZeyEbs8TlfF2M8aqLaBvhWdYOElSmCL+h1JhP4HPOFQk
	bAMOuNipSMbTezpEQBGhHooV3SeL8d6i5P04ooCxsE+e+BNL3KXhgD8iH4MmC7YIT2nl2Oiym0Y
	IrZHdFNQXTYUWf1EzM5O0X8IuZb3MFtsydUdy9rXh37cFRFyXR7NakiAUK6rXOu0xsCOa+K64LZ
	0IRjozlL1921zFlwGJBv19OY3XSxPa0Zm/XaWfEr9G7pEoOzf6xTIfJ8Ph4peijzkR6+dsADm0e
	cyFpQIb6sMGw3h2+KlI4ksvJHJpMqEKKeCHaf8OWg0HrJA9WbGMh7tUab6MOqdLn671xwNcHTA=
	=
X-Received: by 2002:a17:902:f545:b0:235:efbb:9539 with SMTP id d9443c01a7336-23dee1abb0emr63643355ad.17.1752256205880;
        Fri, 11 Jul 2025 10:50:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHoW1pfrpu8TJ9bIwQOf4KOWgHALwSOkO1BYsTZCrJkUsn+7Lrx4ekRpFxTdtXkf6n8J7ntUA==
X-Received: by 2002:a17:902:f545:b0:235:efbb:9539 with SMTP id d9443c01a7336-23dee1abb0emr63642755ad.17.1752256205266;
        Fri, 11 Jul 2025 10:50:05 -0700 (PDT)
Received: from [192.168.29.115] ([49.43.229.152])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de433e160sm50153985ad.172.2025.07.11.10.49.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Jul 2025 10:50:04 -0700 (PDT)
Message-ID: <42a98c8d-7287-8aa1-ad39-4d5b79e177b7@oss.qualcomm.com>
Date: Fri, 11 Jul 2025 23:19:51 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v10 02/10] dt-bindings: power: reset: Document reboot-mode
 cookie
Content-Language: en-US
To: Arnd Bergmann <arnd@arndb.de>, Rob Herring <robh@kernel.org>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Andy Yan <andy.yan@rock-chips.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Olof Johansson <olof@lixom.net>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Vinod Koul <vkoul@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Elliot Berman <elliotb317@gmail.com>,
        Stephen Boyd <swboyd@chromium.org>, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        =?UTF-8?Q?Andr=c3=a9_Draszik?=
 <andre.draszik@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-samsung-soc@vger.kernel.org, Wei Xu <xuwei5@hisilicon.com>,
        linux-rockchip@lists.infradead.org,
        Baolin Wang <baolin.wang@linux.alibaba.com>,
        Sen Chu <sen.chu@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
        Macpaul Lin <macpaul.lin@mediatek.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Elliot Berman <quic_eberman@quicinc.com>,
        Srinivas Kandagatla <srini@kernel.org>
References: <20250710-arm-psci-system_reset2-vendor-reboots-v10-0-b2d3b882be85@oss.qualcomm.com>
 <20250710-arm-psci-system_reset2-vendor-reboots-v10-2-b2d3b882be85@oss.qualcomm.com>
 <20250710224740.GA15385-robh@kernel.org>
 <cdadd6cf-18c9-15c7-c58a-b5d56b53452a@oss.qualcomm.com>
 <454c8361-151e-42b3-adfc-d82d2af62299@app.fastmail.com>
 <28f277af-9882-2c70-5156-123c95adc2ee@oss.qualcomm.com>
 <b870ed33-7d4f-4b0e-a9ae-b9c374ea854b@app.fastmail.com>
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
In-Reply-To: <b870ed33-7d4f-4b0e-a9ae-b9c374ea854b@app.fastmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 2L9qb2OegZnO1-cntl97cfPUBo-6VJ6A
X-Authority-Analysis: v=2.4 cv=W7k4VQWk c=1 sm=1 tr=0 ts=68714edc cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=8g6h00HoWaIZ3EdQG8aEvw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=xZdgJlt2tE-EQpnRY6gA:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-ORIG-GUID: 2L9qb2OegZnO1-cntl97cfPUBo-6VJ6A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzExMDEzMiBTYWx0ZWRfX68LPGthmaggN
 DXg7d6TkTU4hEMPsW2x+ZM65nQNBq4rj158sesDuiuTrISl0em/ANBtjwuxEAIBf/NVInmJGk/x
 Q8OBidGGZm3rPT6hTjWOwJHFlBM+Vmb8npBpcGo95gBspvOUomPThP3ggtrAnG6vh5yMONLlUR8
 d2O/HBWvyeW4Qa0CI3Vy1Edci0lDs6INahixB6K7/4rCGcSiHkRfRqQ9khw4FMzKMWFHB9NzF1d
 XElRA8u52w41uI7i+OfFBLZn/QHYyEk4ChkCEaBexBgYWT6N5qcfqRCa83tpSWQdmgIsGx2Ajm0
 7OkqUiB31RNu5QRwa14NjhRym6tNX8fluEDMxlpbQbpiRVyRRotKOTaIbUbKE53sv6ddkMhb78T
 dDsINauVrtsEwbjAJ9a+toq+56YTDnnYhw1NudpVikNVfPAdnHb4flj6Y86/6rljQ+s7Z+hN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-11_05,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 phishscore=0
 mlxlogscore=621 priorityscore=1501 impostorscore=0 malwarescore=0 mlxscore=0
 adultscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507110132



On 7/11/2025 11:09 PM, Arnd Bergmann wrote:
> On Fri, Jul 11, 2025, at 19:00, Shivendra Pratap wrote:
>> On 7/11/2025 8:14 PM, Arnd Bergmann wrote:
>>> On Fri, Jul 11, 2025, at 14:32, Shivendra Pratap wrote:
>>>
>>> The distinction between cookie and magic value may be relevant in the
>>> context of the psci specification, but for the Linux driver, this is
>>> really just a 64-bit magic number.
>> ok. then if i understand, this binding change for reboot-mode be dropped
>> and driver can internally handle the two 32 bit numbers?
> 
> Yes, if you can easily keep it internal to the psci driver, that
> would work, or you could just change the callback type to take a
> 64-bit number and leave the interpretation up to the driver.
ok. thanks. Will try it out. 
> 
>      Arnd

