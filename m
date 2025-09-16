Return-Path: <devicetree+bounces-217637-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B53F5B58BD4
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 04:32:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5B0722A8214
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 02:32:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B2571DF265;
	Tue, 16 Sep 2025 02:31:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Mm+qlQXJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9362126C02
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 02:31:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757989917; cv=none; b=uhf7bxVA1JWaDcMrE1OHB5LirPr0jiJesV+fjDOK5exOEHrGXCjpj6F02wrCSWCys7qF4Gdywmwi2trnZdB22G31gxlavS6XHrTix9U41xr9LGVIlOv5R1/2it5kIRA4y9+DcJC5pd3s4EfOBK7aAXARoRqavfVtjDwnp/+lMfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757989917; c=relaxed/simple;
	bh=4++fnWEvY6eDmK6WVvP64PvrKxXbk3rdz0KqSZeY+4M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WKLQbk9bC0bqyYih8NhMrSiAk4Ju2EEgcOLGCAXoiJfhlv5zDKZv6UepLYVaRB4Fk0I0R2BDH/zIbaueMRoKOfwp6EoOMlsqncJ7QSAYR8XgE2TxeJ2iphSx4gWLZrcTYo4SE642MEebhXc7gYjipk+hD5DpH2gA+hhALKtWtEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Mm+qlQXJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58FEYHSd007598
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 02:31:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Mj+4DIC4FtIPwgZ5/qVKO3t6wbGyHNH2P4AZrpJL7T0=; b=Mm+qlQXJl1VaizLr
	wSM0NdoKUrX6uPom3OBAi5adxVMBKqwqOqWW6ejrrRgoBdHLE5qlPMrvT6e+VKnE
	ZVkdzOQkdbZ5nvPpPJmDi4PUiv101evyY3XIgp7oA396dY6qViMTG38F38VWGI6g
	d62E0DFa+jvvbKEFo7FD68eUVRhUjI9r26dp5bfCL+H7ebgsmuoN0aWZk65L50kk
	LrewTHg7dWq2+2QzcbJWXSErOgD0uo6HnTm93GK4kGvZYtXO0d5QXbX+neylzeSc
	bZ3P+I6xwpR7nuJ16ZrbK0PQPtTSPb/PaS8JErGkYaGg0h1e7esJgbPL8IPqYdld
	nuynBQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4951chey8s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 02:31:55 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-76e2ea9366aso4638377b3a.2
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 19:31:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757989914; x=1758594714;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Mj+4DIC4FtIPwgZ5/qVKO3t6wbGyHNH2P4AZrpJL7T0=;
        b=M6spiBiZCy7MGZwPc+mv08os7yM6PwzOWsSlkzzqo4cGMsciDS5FX3obwo0DPa7NNz
         Zf1G8nzvf40g1WtWat+tRa5OE2tbOHW3lFDYDgos5GA07HnKheIq36TCMqzFABIQuqZk
         HdpXC8+RLH1BKuk/ShSDB68GAVjfIsGrMLqt2nacWL205GQAksGWi7gP/inSaMfBXPKs
         JB4U0jj/xojmsZhZGgkrSIrNYKBN9pc4kj9adJYd7ooT15IfCIiHavQuUQGntVjwTaya
         94xZ3YNxHFDka9yIvyRv2QNY5vR6T9Kks8SmovHlzEtCwds27Yqd+5hMkeKXpQ+9dU6r
         bRjw==
X-Forwarded-Encrypted: i=1; AJvYcCXomWaTh+NK2OYmTXzXsk8YK6SDj5SeqcEq24q4c95rbO9y8GNNqYfCIVlVObA3VplsFc1KGVpAfN0Y@vger.kernel.org
X-Gm-Message-State: AOJu0YwUSodx12GoVu4rnqQNufGbkaMJ1kciYWUdfoK6SPAE5qBmZO5a
	+x7ax8i0Xoai75nHrs6kWiROKDh+gq8x5Ok+gFMIaOxOwqxVrtlT3Cn7YxDWaorV8klNsXhDkcq
	uDDBzZNwuqDx3jT0ia4NQYjoNH3Zvuo6QgEXuDsMeKt0MVtiNX3mQjzCMSaz8keaj
X-Gm-Gg: ASbGncscwh2vq9jUpzP/b1o6xbVbjitNGfUETjymAtrctydXp94uAgVH6YBMVXQPHgq
	ZvRRdvx+nu1qJCGjrnwEpmrR7ij2ObuaYGI4Yet7Xaysrv9OcfuititQOtjIMlUTL/SwthqiZPj
	Lphv9irX0epjUTnwt0Rnxi5W1mrmusRGMjCLS+ZLhEFekgdanZvvnRoeiJYzodJ1N1IVvuXlZKM
	K+gsW8hhxnNsy3alJPFotfMacrPBBquCv/ESg1nOUyyirKEeHShdj2ysW2FgonCP+dzenEvTJce
	UhcrIY5EhXGlLZtGfn8TRRdzSLUJlV7zkT5J+cmF7lc0Xe7WT1wTkLHmcIi1fS9CDVpibEmvFK7
	lYzWMw69Xv/bl1fa0q1Q4lANpL3BvXCyvzA==
X-Received: by 2002:a05:6a21:6d98:b0:24d:301a:79b1 with SMTP id adf61e73a8af0-2602aa89c92mr19480570637.15.1757989914133;
        Mon, 15 Sep 2025 19:31:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGobrdOnAQJkdYAoa+zOeKuaa8r9jXR9CcquiRwbwPK5Q7sG5dUgcn7ckySyY/fCdIk4y0zFw==
X-Received: by 2002:a05:6a21:6d98:b0:24d:301a:79b1 with SMTP id adf61e73a8af0-2602aa89c92mr19480549637.15.1757989913655;
        Mon, 15 Sep 2025 19:31:53 -0700 (PDT)
Received: from [10.133.33.240] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54a35b877bsm13162406a12.3.2025.09.15.19.31.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Sep 2025 19:31:53 -0700 (PDT)
Message-ID: <0cf4b0fd-e468-4aab-9ec2-38da93435557@oss.qualcomm.com>
Date: Tue, 16 Sep 2025 10:31:45 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/8] power: supply: qcom_battmgr: Add resistance power
 supply property
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Sebastian Reichel <sre@kernel.org>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Subbaraman Narayanamurthy <subbaraman.narayanamurthy@oss.qualcomm.com>,
        David Collins <david.collins@oss.qualcomm.com>,
        =?UTF-8?Q?Gy=C3=B6rgy_Kurucz?= <me@kuruczgy.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, kernel@oss.qualcomm.com,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
References: <20250915-qcom_battmgr_update-v4-0-6f6464a41afe@oss.qualcomm.com>
 <20250915-qcom_battmgr_update-v4-3-6f6464a41afe@oss.qualcomm.com>
 <gk2ho7ugp35kb4x65meqsm3aufnry6srr4p7jspf6xyn7ywzkh@vd5ca7txjdk6>
Content-Language: en-US
From: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
In-Reply-To: <gk2ho7ugp35kb4x65meqsm3aufnry6srr4p7jspf6xyn7ywzkh@vd5ca7txjdk6>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=eeo9f6EH c=1 sm=1 tr=0 ts=68c8cc1b cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=Hj7Mza36WnbFS9u3f7kA:9 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: Q796mqwqYyQSpSTKYHlx6gzfYrvWnqiF
X-Proofpoint-GUID: Q796mqwqYyQSpSTKYHlx6gzfYrvWnqiF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAzNiBTYWx0ZWRfX3V0JLfNhBEBJ
 lK3ptYZttngDpOhSMjQ5PFIsk4fiGJ+Wk/dc12lyufLAYnNPPv8q+amLRwiebP+3pTt8f5y7y0D
 sm7YzilUI1Hd+9G+pcWvXkupAUq9SlOF5zjtRw+IuABF0T/2jQo0rviFouQlh7vcJY7EO04Jmow
 0u8uqKvnVdv5YlBFuYJw7vEpMbCxVt542G9dEo0/qOBhQtJnBCIKDIhwkxs24xi6EuMeeDtEs1t
 FABIYWxEUIcO/nNpF4ubPqw9gIGfEAI3anGX7dMml6jhcP1SkKYMYpU3B3uV7CicH7vKbkx2LXU
 Lrq1sPeh40hJC9cwnt4Jxu61xLzlBpj+PL5rDoh4eMDeHG456DCxR1FmQ4ndC4kxNu3kwPDClCW
 FCcMmBe6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_01,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 impostorscore=0 bulkscore=0 adultscore=0
 priorityscore=1501 phishscore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509130036


On 9/15/2025 6:18 PM, Dmitry Baryshkov wrote:
> On Mon, Sep 15, 2025 at 04:49:55PM +0800, Fenglin Wu via B4 Relay wrote:
>> From: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
>>
>> Add power supply property to get battery internal resistance from
>> the battery management firmware.
>>
>> Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on Thinkpad T14S OLED
> T14S is X1E80100, which uses SC8280XP-specific sets of properties. This
> patch changes only SM8350-related data. How was it tested?

I assumed that Neil has picked the series of the changes and tested the 
charge control limit functionality on his T14S device.

When I run "b4 trailers -u", the tag was added on all patches. I will 
remove the "Tested-by" trailer for the patches with functionality not 
applicable for X1E80100 platform.


