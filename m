Return-Path: <devicetree+bounces-229175-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 783D2BF4B4B
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 08:31:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id F057934FE3C
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 06:31:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27955261B75;
	Tue, 21 Oct 2025 06:31:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="A9mGP4MH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4C6C21D3C0
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 06:31:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761028264; cv=none; b=eugLQi1r4Wm7PA5/0RVX6nLT3PVmOLpZn0OY195zKcV8Kyj1WMe8gzhbyJG1zRmaOYjN3pHfBqmm2jtaVjYVgRxK2lItd+zWZY2CQoGiISCreUtT5JixO2U5jdoMDXchh4KYWJMcKd/dhilPw+fOp1yb6LCTsRaTB4kZpOwBm/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761028264; c=relaxed/simple;
	bh=Xn2v/XixXomU1lq1IhOn0xRQ39dUnTMlBPJKpTbUd7s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Iqfkx4FabNasKXRs6J/rrA5riXZ9N54ZOkiDeaZ1m/SjogewOvMp7t9Ye9JBldqQqBzZFXn+2pYo/M0auAbidQJfki1B5kwP37UnRvjF2gTNw+7o3vjjxudyGChmPUvv9AcHp7GHuMoleiiGVqyfpFJLmsNd0p9rDtT5DqimTY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A9mGP4MH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59KL10UR001141
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 06:31:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Xn2v/XixXomU1lq1IhOn0xRQ39dUnTMlBPJKpTbUd7s=; b=A9mGP4MHhL32d08h
	6ZCxyXxoc/9UoSFbMim5VGrXcG0BGM5NxOgdGxHkMjcbHW5NByK2NcOm57Uc9krg
	xmBdb4tCkMCb1ZNVh5ridNHUfZ8b/PjgTjkTqo/P40KE7LyCR3vAVl5VHfbqtVFz
	n8tDAclmgL5+qUx5dybRFFQTDU9iTIxSmkeIyS3Ck/96goIJxATRmUnouTB3koPE
	cSOFmp1pDZlRk0yeraXhBgPW91bzMMnrop6/PvzrWjfy0nesjjcYlMPxBRehSOkA
	GJp5wnF/ZVpDMd48O/80Gk6TanZMp5icMpY9Ija6DJ925sjKM4cQ8/I6cMFOZzxk
	SZCuqA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49w08w4yfc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 06:31:01 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-286a252bfbfso140306605ad.3
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 23:31:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761028261; x=1761633061;
        h=content-transfer-encoding:fcc:content-language:user-agent
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Xn2v/XixXomU1lq1IhOn0xRQ39dUnTMlBPJKpTbUd7s=;
        b=wREzBhTwitpJOaUjczZdqY8V3SfzpzgPlJkjKJMRv0HIo1nxqJtLaU3iOCKqkpi9L9
         APhPrVIIfj2qX/9Zqkgzg/BJnkHuhspybZQp1luhWz4zoPuFJdXsuAhYtdFQqliaQKoB
         btX0ky0cTleXK9yiH5JGlUCOInrjlnaUlFhOXw5HPCKQJiVeCJu8su9lwEnv2aZbYXJo
         +KSQ0+M8ypmbbZZFMmPDcD6HarujFTGHzDbGX/YFRK3PTZ6WtoF0R0eZYOanr1EXFf8s
         kj/76wrYxdKZXivEyxJCEviwAucbkFzyTdSc/kAqI1mMdzEDoiXvXjUR/VnFrD3sX2SV
         LOWw==
X-Forwarded-Encrypted: i=1; AJvYcCU5PZ7UYfE3pP58Va/RTAfabmAMsjgO0+3GgNJbEoy0205EanU6jxnLyNdT8BA2aS2YYNOh4HTQafVu@vger.kernel.org
X-Gm-Message-State: AOJu0YxGch9aIWNoY7LTYmstt5/O+5j/P/2n0M+GFmbev/2IZxLLxT/s
	//GAgvcl60Wb2etRARAbQoDy7gS1lIB0SQtaOkY2vUKruAVD0UvVBTzOv1rXrAXjPuJTD0IYvsl
	POBdFuW1vpr5cD8W1iO2antkGbMw5HaSB0diBMaaARAIVgClZ4u4eX0u2I06w8kxeHY6cUv8dCH
	w=
X-Gm-Gg: ASbGncvThcl4AVQ73nAfp4/dgt9b9Y+yq2Z7009AU4uCPtcYtx7s7IEvQmm0di5Ifez
	dnwxntL497YmJcqfxHTrMNFMC/uHDjJYZCeeloqhRQSi0bY2BxJ62lQxw8pZJ73BQKkJG1LY8Uy
	Y3QmVTf/N+HXVRqiU7UXMMOaK/cgTeuCkK+EFy8qtNQI/RCQzCy0IN2vJs+clqVIn6Abi5WLxzs
	ljBogY+uNwOoLkN1dymiUdok5uWGMnjd4qR6H90b8WczOYm+lCXbRGN/ACzqO16+8nOw/x5jDvf
	gQUbfabETdPhvnoCrArcFi2KiUEhN7Mq1mRcNOoiXsyCNqFXkrV7dTEGfsexWulx/+3Xm3Inek2
	7fpuRXZgkNRBrlGagma6FWDzNmllI
X-Received: by 2002:a17:902:ec87:b0:269:82a5:fa19 with SMTP id d9443c01a7336-290cb07cbbbmr180399055ad.45.1761028260972;
        Mon, 20 Oct 2025 23:31:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE7d1oD/icwL9tXF2A+vZkz2krk4s2ylMycm0mskHgpzBPJz6Z8WKXs/AtbHkwBz835xZyBMA==
X-Received: by 2002:a17:902:ec87:b0:269:82a5:fa19 with SMTP id d9443c01a7336-290cb07cbbbmr180398585ad.45.1761028260502;
        Mon, 20 Oct 2025 23:31:00 -0700 (PDT)
Received: from cbsp-sz01-lnx.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33dfb573f97sm731028a91.1.2025.10.20.23.30.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 23:30:59 -0700 (PDT)
From: Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Tingguo Cheng <tingguo.cheng@oss.qualcomm.com>, kernel@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>,
        Fenglin Wu <fenglin.wu@oss.qualcomm.com>
Subject: Re: [PATCH] arm64: dts: qcom: hamoa-iot-evk: enable pwm rgb leds
Date: Tue, 21 Oct 2025 14:29:22 +0800
Message-ID: <ada950ed-7b51-4e62-93ff-550c427a73fa@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cb973808-005e-4920-a35b-3f02a402a78b@oss.qualcomm.com>
References: <20251017-add-rgb-led-for-hamoa-iot-evk-v1-1-6df8c109da57@oss.qualcomm.com>
 <cb973808-005e-4920-a35b-3f02a402a78b@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
X-Mozilla-Draft-Info: internal/draft; vcard=0; receipt=0; DSN=0; uuencode=0;
 attachmentreminder=0; deliveryformat=0
X-Identity-Key: id1
Fcc: imap://tingguo.cheng%40oss.qualcomm.com@imap.gmail.com/[Gmail]/Sent Mail
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-ORIG-GUID: dC0GYKJvYNEvjybJxx5BAY5ptEJz2d4g
X-Proofpoint-GUID: dC0GYKJvYNEvjybJxx5BAY5ptEJz2d4g
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE5MDA5MCBTYWx0ZWRfX5CLl/fquhXsv
 ALReHH/8Djp7xCMtELk3e+Abiz+g1aNCPJSgWZAukpgkQjrsjeSWozDZ6fXuPZZwmxpyhfPGe6D
 gCh+yXMwkAAUgxbReB/tzry9EZl1lDhzJk/ap8jpIPc8l4JGRgtx+j8ZMr9U6HHp7cXuMgyaoFO
 s49cMptBwuMgbvufplHFuzgVko1yaRYsW1lrodonbqfJdMCl+xp8qhR3DkH725+cTWugT0H725Z
 st/owx7+/C05ulsusjdUuEGtPta25GRj1siak4r3sPVQe8t5imxBpzYQq1LxcNhyM7hj0nc6iur
 Xp/Uk9vEKFffIBVimUYjAgCCveZl3QUMIg5/WOaJkaFZ8QHojnHb8DBAJiZ/vBdKmb+qabmiGwd
 Iq3+Qa0Mk3TIDTqOjzfvO2D6b46GdQ==
X-Authority-Analysis: v=2.4 cv=V5NwEOni c=1 sm=1 tr=0 ts=68f728a6 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=tLeiS6LLZF2fRYzC2IMA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-20_07,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 adultscore=0 priorityscore=1501 lowpriorityscore=0
 spamscore=0 suspectscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510190090

=0D
On 10/17/2025 4:09 PM, Konrad Dybcio wrote:=0D
> On 10/17/25 10:06 AM, Tingguo Cheng wrote:=0D
>> Add red, green and blue LED channels for the RGB device connected to=0D
>> PMC8380C PWM-LED pins.=0D
>>=0D
>> Signed-off-by: Tingguo Cheng<tingguo.cheng@oss.qualcomm.com>=0D
>> ---=0D
> Just to make sure, is this a "multicolor LED" consisting of 3 ones,=0D
> and *not* three LEDs that are supposed to communicate different=0D
> functions (i.e. network, power, disk i/o)?=0D
Yes, it's a multicolor LED composed of three individual LEDs within a =0D
single package=E2=80=94not three separate LEDs for different functions like=
 =0D
network, power, or disk I/O.=0D
However, there's one exception worth mentioning:=0D
The blue channel is connected to two sourcing signals=E2=80=94the EDL indic=
ator =0D
and the PMIC PWM-RGB blue LED=E2=80=94via two resistors. These resistors al=
low =0D
selection between the two sources.=0D
By default, the board is configured with the resistor soldered to =0D
connect the blue LED to the EDL indicator.=0D
To support software control, I=E2=80=99ve added the blue channel in the DTS=
, =0D
enabling the capability to light the blue LED from the software side.=0D
Some developers may choose to re-solder the resistor to connect the blue =0D
LED to the PMIC PWM-RGB output instead, depending on their hardware setup.=
=0D
> Konrad=0D

