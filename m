Return-Path: <devicetree+bounces-244892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B02CAA032
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 05:02:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2B3393010F17
	for <lists+devicetree@lfdr.de>; Sat,  6 Dec 2025 04:02:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3D1429C327;
	Sat,  6 Dec 2025 04:02:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="O6q9opW9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gPcRKH7g"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 696DB284898
	for <devicetree@vger.kernel.org>; Sat,  6 Dec 2025 04:02:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764993722; cv=none; b=BSmbgbE4PlWiedNpFlbPVDUue5yzZIB/HKsLmkb084bsRb7VlWDhzTvkytxpHGPkQsXf9BylD6RyXso7obS67/L1DvkkXA83hqEBTijMRdIChpbSsetg7YHJALKM5ybnf8Y1SjU0l7tRIeSx1VwRxY28i1Vaqbg498GKZ0P2FzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764993722; c=relaxed/simple;
	bh=ANqLUbH8z5r1tNPCztXBr8i9cgZH6qe2CnSKUC8GKDs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WUfKbQ7kIHd2AV40paHwjv+/7t933ZOlL9lLxI/N9uyGJFJX5h2xzrkWxxjGjnNYAvfD4O/hwocpnDQWmfbuGhYp1Q7kkZgVTvVGfLwJgwLIyxdXRxsncVp33QfEai/+sIJKwhj5pJVY1HUxQIzjIwUwp7kAGNKTJJr2N2QPMTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=O6q9opW9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gPcRKH7g; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B5KYK4r825969
	for <devicetree@vger.kernel.org>; Sat, 6 Dec 2025 04:02:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/odArupX7GK6S+g23TdhpxBGWP5MA0F54bXiU7Q1EnQ=; b=O6q9opW9DDuaZgTA
	B6iErHbUcbAt1d9MMleORhDFZfAsFKJdy4vBLvJClW5q7WoU4b+2WxY+g5grmjb0
	sX2K7dHPkNO9+oJub2Xz+airH1hUORQMdbDE1yJyxc7yaUOGfmkpjenK+B5qsFgl
	+nz9WpMuX8NJfex4rxrQsxDUXdlii1l4RoU+0ZSO20OA3ztt340G8i/aIuThJsyt
	dAOGlBmrIvaePH4XF/X2Lvwn9+kQfzhisqAi2yqbdcJIFXw1Qy1A5Xg9/LpOBKfA
	otIaQCMK/9jYkNhNp+GXhoWNT15SJhdu7eoW9dgDlfzpjl5SAYJMTprrYGyqSfVM
	tELWlw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4av6hu0snc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 06 Dec 2025 04:02:00 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b2e9b2608dso465720085a.3
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 20:02:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764993719; x=1765598519; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/odArupX7GK6S+g23TdhpxBGWP5MA0F54bXiU7Q1EnQ=;
        b=gPcRKH7gLL14S15bVJ9NBuu+580Yqy3jTsBBMCvMP5hWZ1WNxaniKvcLojyDkGhEQr
         QklxRaKnbuA8oHFb/IBrojXwqzjc+GET/W59HSX9a+tvRiZvthcRK0X67QgtyIkbc1SE
         TQmXRDIrq5knUlZtvrXbVYG/AyrHT7a6J4eXPIL+dbzYfwqUsd1CuPPqycR0XMAPO8uT
         Q7tnv5WGZyQ4Idk1BoCrCkpTBclo8L71e9/CgCuCRunx61TR29ubhwP7ioLPymBRxE2j
         9AYf2hKtbJREsjAURysLIUoIsADfJjtQNLOlqWGyzKWVzA3QQCnkKu3jMlKHlnyXfvce
         spHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764993719; x=1765598519;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/odArupX7GK6S+g23TdhpxBGWP5MA0F54bXiU7Q1EnQ=;
        b=gKT38rwidYpi6D9HpqIFjFnt6rNIJLPTcVwXyvoduMcu4/I9PfJBneskrnq6+Y88+t
         Fvh/9Xx5OiogwdekJG09OtiZjtUdcQ4DXatFLXF/LKoJHGazm52iRnGmxDYzZFiO7axk
         rUMpkI7fCCVX6F58+7RvyxUinzxr1vxU92OenA82fjclhTLN49Lw4jJQkTJvLyGbG7m8
         j9XAm6zqHwweVPGtnTQA7+9n4kAFK/BWSHlQFMG5FNE5QnOm05L96Gn07i5tC2CboYkm
         VCO8BpPW71w9HOqgiXSbN9jJ460lOSLytYuEWXdh0CVfNREnBLEyC2FZYNRIfWkPRwuk
         iv/Q==
X-Forwarded-Encrypted: i=1; AJvYcCWPkj64PRTocXRIX64SqrGa+McDlNvLS5wv6pxwc8jce3FKxtHBz2z1h7wXbdWPpFx6fyV8lLVgyDRW@vger.kernel.org
X-Gm-Message-State: AOJu0YxWS7hOMwNckBH5Q+OgQCVBRilSonwtoV1bQjc994JJP3kHs5xU
	65Aagkdp6VKMoWrbYCltm+EZtviVZsEpROUtCVcmQ7ffz/3nhzN44kBWlqxqU+1skQkYXSC71ze
	1fVCcTkHGoihcZJZ1rKnqZwoM+PEs5leHNYG3KJBnRNq5Os2setItxoXlWKSe8Ew+mdHPzI3L
X-Gm-Gg: ASbGncvkcnEkmUi2FloZZTi1ss1Zckyy6iS5IPYdnBS0gY12SEhOor57O/7UqWJfwsk
	d/uE13NjwVRtYAqMDE1XVL4HLrBWCpB/gaSzYkUaAuU3PBOUWqM4TN4URapqEQY8QNVi8A4eUuA
	qT5HKXtjKWPSqgbgpbQaEmvVOWtB42x7KUyHlpMIES9Rq4lVleoqujUaIDl0Hw73hMTKNXU13JX
	78MPVC9QNymjVYDPsXNSfXe9mT8DwBKOhkiY67VCXdrM3iEhVN5bUFiL+dDd+clpHIvKswMLi1+
	WkwrZ+Xq38IdOBbRkHK+nKokfGKzbFHKtktbnHCeGtLgjPzvm293y3OUBQhC6vSoGiFSFQ3I9Vm
	Lrk7lhelB+1HudHWQtwH3kN5L+YtC2m+yOAQ6ueCaCIgOXG3KJhZg8N+MBrYaXpjqEpmqiMRk+4
	CnOeerhb0l6E6wDqa0uWDW5Do=
X-Received: by 2002:a05:620a:2908:b0:8b2:655e:52f0 with SMTP id af79cd13be357-8b6a24ff58emr202933185a.22.1764993719383;
        Fri, 05 Dec 2025 20:01:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGodC8/lR/0pK+PHahDj1wjZi8jBSn/5PwsixZBvUYHkBEBfH2wKQ2ceq4/qSHar0Y1YHz13Q==
X-Received: by 2002:a05:620a:2908:b0:8b2:655e:52f0 with SMTP id af79cd13be357-8b6a24ff58emr202930185a.22.1764993718818;
        Fri, 05 Dec 2025 20:01:58 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7b1a63bsm2070906e87.1.2025.12.05.20.01.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 20:01:56 -0800 (PST)
Date: Sat, 6 Dec 2025 06:01:53 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Rudraksha Gupta <guptarud@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: qcom: msm8960: expressatt: Add
 coreriver,tc360-touchkey
Message-ID: <hku2xgecaz3bewsa5hqzqklzay2okurcrehzaxjkx6ktayinow@dtgvgowyzobj>
References: <20251205-expressatt-touchkey-v1-1-1444b927c9f3@gmail.com>
 <arocrbzcwvyb2te3gcujeo7jaiaisgh3wuketqkif7xvkvmbct@r26gqpw6gb43>
 <7c54fd46-d17a-4ee8-ad9f-e98546958dd5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7c54fd46-d17a-4ee8-ad9f-e98546958dd5@gmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA2MDAyOSBTYWx0ZWRfXxddkSrHS3IBw
 pbr6kii6o4QIzya4HfTeBqx7d7+c6iHlaG0jLwWPa060votcI2UVvlw+PSlJ8tj1nn4c0GB2E3R
 xl1yuwWLvHlkss5kIkKuth1zn2HjVxQD97KQL9v3gO7labqk/HN6ZcaG5rGgTK6t5cHJncqfgnX
 k0DXUdwqtF7/kV6eaVkEQrzmoNKNftUldG4uK8y4V4nGm2jJJMtUeUMVyFgDd2xzoZiiCnWk9cL
 a/BstRG13kCHHGa7x4497Aj6DPO9fi9dpRvZXKBfSdMPK6g0GZkspf74xw8XZ7a8kTX0AYpN59b
 QHX16x0SHtR1l6VQ9LSZg+axaGz2VyFlnmSCksIlkY4gkFhq17zi5kwIPYe5Dk5mSuodPRtsSUP
 srwGt1dLEvHSTPfNS0SFMwaPUS7MgA==
X-Authority-Analysis: v=2.4 cv=NPHYOk6g c=1 sm=1 tr=0 ts=6933aab8 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=RKOAonYVq8CxiXVwL6QA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: Xn2_p9ltyE_-xAl3jieQwm0dNpCiAvQg
X-Proofpoint-ORIG-GUID: Xn2_p9ltyE_-xAl3jieQwm0dNpCiAvQg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_09,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512060029

On Fri, Dec 05, 2025 at 07:54:55PM -0800, Rudraksha Gupta wrote:
> > > +		sda-gpios = <&tlmm 71 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> > > +		scl-gpios = <&tlmm 72 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> > I don't have docs at hand, but it looks like these pins belong to
> > GSBI10. Have you tried using it directly?
> 
> This is the log when I use GSBI10:
> 
> samsung-expressatt:~$ dmesg | grep tm2
> [   79.555802] input: tm2-touchkey as
> /devices/platform/soc/1a200000.gsbi/1a280000.i2c/i2c-4/4-0020/input/input3
> [  110.242881] leds tm2-touchkey: Setting an LED's brightness failed (-110)
> [  167.074920] tm2-touchkey 4-0020: failed to read i2c data: -110
> [  182.435009] tm2-touchkey 4-0020: failed to read i2c data: -110
> 
> I could be doing something wrong, so here are the changes I made on top of
> this diff

I see, GSBI 10 uses pins 72 / 73 for I2C. Then this your patch is indeed
correct.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

