Return-Path: <devicetree+bounces-223719-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id AF16DBBCD4B
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 00:23:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8EEDA4E0589
	for <lists+devicetree@lfdr.de>; Sun,  5 Oct 2025 22:23:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14FB823D7E6;
	Sun,  5 Oct 2025 22:23:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GSyeppwx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABA211E47A8
	for <devicetree@vger.kernel.org>; Sun,  5 Oct 2025 22:23:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759703010; cv=none; b=YlNDFROwLHwpcW4eFilaA4zg36PCt7GkMwF58D3CWYweOKcSfsMBD0nmsXIrZcUqk4zOwHqSClX0Y3Vm0gjzGzCNWVANLe9485Fs424jxkelak7sk5CWY4tNYJQOb4vdtdPyyIYOaaXHKaspKZm2qwdqyu9CONumpRR8Qd3E7rY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759703010; c=relaxed/simple;
	bh=Z/d1cmHnIpZcYmrdaRS5TreRCAVULFhW1i/E94Fp3Wk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rPOuck7xf49OUWaLrhgfrGs4dug/hAVKg5tcUadzyJ4PVAf+sdiIuJX1QYG+rykK7aMIU7dbVR+5utlAYBEO+dBAXtQiCKwFL28G/LzuhIsdUo3BN02IZpBw/tH/rKcl9WIYHtguMRHES27tCov7R+68rvUhiKyTDrJtNgD6RYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GSyeppwx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 595LRcqX030559
	for <devicetree@vger.kernel.org>; Sun, 5 Oct 2025 22:23:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=HkavZTNmerI5o65w8ncgVohP
	1tuZa7qLx/+DCZ97ays=; b=GSyeppwxYtkpNvEB9CXu7VHD8FyexvjJz09BThVA
	5MPxqhXZyJSts66XXHTAxIR1bFnuhC9DZxsASNgp66jNYt0kM6qL/Gy6SQKvEEEo
	IagmU8JAAN0dm9q940Icup3xpYtcRaW72MRXDOLf/wW2l0Ejo3v3RL90taL3/BFO
	UIC5+m1OO2oec3Ed5BxYdFO02cLR/WApAA+MVl8jKA5PR+iweERhqBIos9th3Drr
	ZlOyJGcpArwWipc/xO53vlvDiZ02uxsfClYVmhkCRigoAvrGYsVy9e5LHy5EwoLp
	Xes3IC5K/wDYnhj9azlBhgUkRU7gTaggao9l9ZcX0hj3xQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jthptnbp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 05 Oct 2025 22:23:27 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4e574e01ed8so95541251cf.0
        for <devicetree@vger.kernel.org>; Sun, 05 Oct 2025 15:23:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759703006; x=1760307806;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HkavZTNmerI5o65w8ncgVohP1tuZa7qLx/+DCZ97ays=;
        b=bSxYSvVGpwFFhWZA/2RqFnhl5xFiBgpblmdnyHoY75nV9Z2vS+QErS7+s2c6aIfeO3
         93DUUp6dVHTDbj6/AMF59j3q3itayDpWdxGb9ItbWcz0C1hNzAie3s1NPLMdLWdgMy8F
         BvyRKZk4LWTOuZKRbQMGoGSEAJiq9L8Vkq8kUJIbnXVLH6j/lb7DKk3X0po6yGPSzaTM
         FTAD/tZgvEY+Es4BZ6gWgGTyqpNrp4tM6s4bfN4UbIOWxWcNcU4m2NQibKF7Gok6aWma
         2bbZvoaVWd5ig1WjEC1Ul+Wl6vfS99KwS+xZKqivIeZCPxys2MgSgLte0d/EQJ6iS+MY
         /voQ==
X-Forwarded-Encrypted: i=1; AJvYcCUJVsYpTDH+yrfQ/XiNuWGoI+v9FV+KIEfNvrgOMYmWjFuIqNHJjddQ6Dy4btYDwNczOQAnbEItApM5@vger.kernel.org
X-Gm-Message-State: AOJu0YxrklQV6qTO6O43cZtZfuoB9RRmhfmhQKez8EaBdOQDU/klRLNc
	BbJHZVJ93vo/4D4AxbbdmuwUl8zNF5v6mYl+lYpEGVXRKV+4oKXSRg5LBDEhL9fxpNOsUVk5E0X
	VzJwWaNKPerW6QtprHo5v6c4mXytjVNyDbXnH5ClGlcunOW6PxxKc262VG9RiohtU
X-Gm-Gg: ASbGncsiSdY8g4INRia1i8WVx32OXtaNidqf1ZzE53Dhe8E346dgX7OzaAThlYInUEE
	C/sv2KCMtvLdTikyUu6NXciLirAhN7ZMViZIwhlzWhKnxEuC3CX3fXcu5ixVpVPph1nZQQl9yuy
	7bUyJm+imQ5R9o/sm02KxKdgNUKz5qjkgyON+bOiUCLcfP6dzrcfPk31/C5B4M+fi3vrO9Mfjk2
	1xMbwKpxU1hypB1huAsQwq1u1VPp14l8fR/pAsVhMIHP+GlLlzJKKgFaI8if3US24/ggFsa4LyK
	Z1zbbLfUCMg7xbwWXmbLuktRh0ogowBndFZovIR7PlcHMNM5+rTL2rQeLLKZ0yaJZtAQ6Z4BK1p
	VwK8BzZxYAUdv10qzyUOvbiXwK5HRcuyIh6OZRHvTZNaP9tEmdaKbw8EXug==
X-Received: by 2002:ac8:6f19:0:b0:4b5:781c:8841 with SMTP id d75a77b69052e-4e576ab89d5mr143936791cf.42.1759703006374;
        Sun, 05 Oct 2025 15:23:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHusGPKlhdeM3kKfumOVt6gnrGqSczS5SCraNaBCAp+0/JuOqrHjGq6QZKCt6SI0m+MD3AuKQ==
X-Received: by 2002:ac8:6f19:0:b0:4b5:781c:8841 with SMTP id d75a77b69052e-4e576ab89d5mr143936711cf.42.1759703005960;
        Sun, 05 Oct 2025 15:23:25 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-373ba444480sm37937761fa.30.2025.10.05.15.23.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Oct 2025 15:23:24 -0700 (PDT)
Date: Mon, 6 Oct 2025 01:23:21 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Chris Brown <crispybrown@gmail.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Paul Sajna <sajattack@postmarketos.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Amir Dahan <system64fumo@protonmail.com>
Subject: Re: [PATCH v3 09/11] arm64: dts: qcom: sdm845-lg-common: Add camera
 flash
Message-ID: <gk4dxz4wavdc66xr76bwiwu6o4f2d3iyxxwnyr3onmkwhlgk4k@tlvnmzbfbzbl>
References: <20250928-judyln-dts-v3-0-b14cf9e9a928@postmarketos.org>
 <20250928-judyln-dts-v3-9-b14cf9e9a928@postmarketos.org>
 <42463474-7fba-4df3-9dbb-24140581690f@oss.qualcomm.com>
 <CABN5=wEpekmKxFCr7nBcYGSt6ZH-g+bx7Y5Nmoo=tMrorz2XBg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CABN5=wEpekmKxFCr7nBcYGSt6ZH-g+bx7Y5Nmoo=tMrorz2XBg@mail.gmail.com>
X-Proofpoint-GUID: ldvas1O-JGl6r-HnCScWLZ4vDb5h0Pi2
X-Authority-Analysis: v=2.4 cv=N5gk1m9B c=1 sm=1 tr=0 ts=68e2efdf cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=NEAV23lmAAAA:8 a=EUspDBNiAAAA:8 a=4fvD49LNPrp0q1SnXk4A:9
 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAxNiBTYWx0ZWRfX2YcIYaIBND7I
 Ab3OYjaW3xK2+gB4qHgmL55gis9wnYQc1dEbkqOuNuuTitU4C/KggYLJw0N3L9HmXOOIbKKCWbc
 osmL70kKX1TlpEoKsvwCwLsjp94iep8qRZdfXC+GlS2J4moGBb6hLg3vvX1PS8ybEnv/rhZEsvR
 Yst0C3PL+NA/a+pHplYlXEXV7uxTm5EOc3ZaCmNNWzx56/CtufhWbTSSqF4jbRfpqLjnUzi4iKQ
 KdhtyR1XKJ2oDdbdRS0CGKz8m8m7+VGPDt0Y/8lHXnfAwNPCs86hmli4G07W4UAp3VVKlx8OUyN
 j9YPIS1GjVi0qxNHHnj2x0rcAhS9j7zo2ULnZgZHUlonT7iPMUdZJhzM8QlVt/0aPYgr8AaWGJd
 6AKRnIeCTKzEj7/t0LVCLuGJajLsrw==
X-Proofpoint-ORIG-GUID: ldvas1O-JGl6r-HnCScWLZ4vDb5h0Pi2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-05_07,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 clxscore=1015 suspectscore=0 adultscore=0
 impostorscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2510040016

On Sun, Oct 05, 2025 at 03:35:56PM -0400, Chris Brown wrote:
> 850mA looks correct for the flash, whereas the flashlight/torch should
> be 100mA based on
> https://github.com/EmanuelCN/android_kernel_lge_sdm845/blob/U/arch/arm64/boot/dts/lge/sdm845-judy/sdm845-camera/sdm845-judy-camera.dtsi
> i.e. led-max-microamp = <100000>;

Please post your answers before the question rather than at the top of
the email.

> On Wed, 1 Oct 2025 at 05:04, Konrad Dybcio
> <konrad.dybcio@oss.qualcomm.com> wrote:
> >
> > On 9/29/25 7:05 AM, Paul Sajna wrote:
> > > So it can be used as a flashlight
> > >
> > > +             led-max-microamp = <850000>;
> > > +             flash-max-microamp = <850000>;
> >
> > Allowing the same current for flash (brief on/off for night photos)
> > and LED (flashlight which you normally toggle through quick settings)
> > sounds no less than suspicious
> >
> > > +             flash-max-timeout-us = <500000>;

-- 
With best wishes
Dmitry

