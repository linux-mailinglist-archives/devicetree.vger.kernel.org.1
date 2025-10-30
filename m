Return-Path: <devicetree+bounces-233174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 807F2C1FC4F
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 12:17:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3E7714EA5EB
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 11:16:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 696CC3559DA;
	Thu, 30 Oct 2025 11:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bjF1szMk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Z+L/6C/b"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF77735504B
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:09:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761822594; cv=none; b=rmjZ5pjq4PrqP3WNN8sx+RwiH2RSmaL9oJ2NoCXXSA2VPP/cQpaNAQQ55igBfW4K2fz/Pq7QaLkSCs3FqpAKmVktlb2R76tq41TV8adskQJvz6BaVI3iLWmJAutfIayuj4hO+2cjn0ETrjSZnrC5wWo05r9qCoALfJlMww7NZUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761822594; c=relaxed/simple;
	bh=WN6RMBwkOJd1/iIMPaHzRsVxFObpYnCTdWoFhh4uxaM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GPTRtdOQvHvlLtGTnOCFd59MJXqP470/Fuqfym6XW+v+DLXD+50DJIIUhelnDyVl+qOXEXLUhzwXTKCiTkQlD5x74T67bzbuljDtjF7LDBS/KkTf+MjG79Ma25avrGHkZ2AHBrQyWECaATh1MFEbsTPVWylAVHe5FwHJIGBWy8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bjF1szMk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Z+L/6C/b; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59U7Ekan1501940
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:09:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	C3t+V/SRFoYfytayU9pkmTuSfwG91Y15AOZSC71aJ0w=; b=bjF1szMkLfb8GjNw
	3PRfJhc4OHw+cOIELts/Ku8ae1xapRq6ydqJvRMOn7utIxuB3J+HwT2IMkO3OWR3
	3wSV78DQOXdNnXCcB5o+mXMhIGU+g/7ukRT1s3HWkQIckUH38NVJtvHUnYQnGlL4
	LwUasELqWs+iOsHRXnBLqm03loOXA75ABUYHco0O/NK/2Toj7HnFUVWwu0wCyulZ
	d0rwIjk9N0bSm5aTbm38s1PAYEFuITXIrpXK5IHMuhUPXJcq34nYJU8wCPM7o01n
	0vVaAfilr+44ICAEhzxizWop17uqozvnn5B0tz0JS3jOSC1dOC2ymF6H31rTW34A
	yDF99w==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a3t1jt847-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 11:09:52 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-340299e05easo858479a91.0
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 04:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761822591; x=1762427391; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C3t+V/SRFoYfytayU9pkmTuSfwG91Y15AOZSC71aJ0w=;
        b=Z+L/6C/b/Wtjz8LNTpwMGUgksDGA8y5RAUxjR6wDrE9abxjBdAupFnfvtA7qTxTkq3
         Nqe6Ve6kWInbKw0al09U3mOzD219MzlbP3BLJVdTqYPZ351yDBeFQlUeHobldnZTRpO0
         SoBBDCegvkjc2LEP+sj28+KM+aQtKGB7QO1bHmf24zKKVKc+/QEBfQNJF+JymZucuJnR
         qpSXMgKVYT2MgXtBknsLn6NjMyRrRbDzA7wtzQ6IGiogEDIbWd3+7HREKF52/pnMKqf+
         d5+9HP+KXkm/0xJGlXoBDZfJbTfGtMVIbqX/mNWzKN5VYptohb+e8YYLgXCLrW/MK1wd
         +fIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761822591; x=1762427391;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C3t+V/SRFoYfytayU9pkmTuSfwG91Y15AOZSC71aJ0w=;
        b=nbtIQssvkOCG0Qd6XtgcIOOwuPzakv61dEHQvOBukaprgBsKuh42E6D4hFvBA+5fNK
         ZEtZ/dpKoeKftZIJKBTpE66Fz/hLQemve9iQQpq7c8V+Hk58Ey5U61US13y72qmSK1o0
         rOoPPWmVMOgAgRjquTyG+qiVQX0EP+lu7x/qseNyxntqG5KSYemGDXl/6phjHTKTTWe/
         Bb5t5qkKeUJFVy2BrQ/Z5PWpe8kZzmFMTZlrBl+E7XQs2wCMoAqbovyb6hiStCDA1H/w
         SmBR5Q4GciCzxhicOVX36ZkSKRvMOVJ0VcoWPb4uOvjhryH0oZ3P3tRYLaHQSHynDGzD
         ds2Q==
X-Forwarded-Encrypted: i=1; AJvYcCU0wC9HtH9VzhFh5DAd5PtL4oSE0bMtHNAgljX5TB+NUZG7gW5QXSw4qjobRf0ck4BTMTE2an6QQE8Q@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5UfFUcmUdFFANsWxCG8nlqRJuLha8PARTWL+QjN9qro7C14OD
	dG69neDyBq1vl9izIA4o0xg5X2uHUdmhXjZCdpdfbciOzq8efZs+66GHR8gWP4pfP78j3DBwqQc
	CZwtUACFEfbIoAkOd/+poVC90kvb85W7MR5bw1DnoJM4wQlXcWQrIXsH64m3+skslSc3Df8tXoc
	7eP7+FGCPMNYbcNcqi63vqD+1MK+xcZxJzj4G91iY=
X-Gm-Gg: ASbGncvSoQQi2YigBcEtGHI8fG5uhK37H+VxOIHwp6NZMNHGmsb5Pnhm0DZOUk3NXzr
	/K80JHUZAnCxVr1uEsSx+fFd76o7U04IKqEjnHgLp2hZbxLTpHA0BWVHQhNvEkIr+7m2dz2ct9C
	z6+2Nz6TZT9dktXz1vU810b1+oGDxIb6d1sHldx89Fl3JQz6QVh1rmnGUw
X-Received: by 2002:a17:90b:28c4:b0:32e:1b1c:f8b8 with SMTP id 98e67ed59e1d1-3403a2f1869mr8283794a91.26.1761822591223;
        Thu, 30 Oct 2025 04:09:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHuWpqx2dQdmzUz1hZvXjx7VVf4+VIGRNiz0+Zaq+XhkkcB2ivQP29u5OES2V8GiXIBVa6H9GEFSmEr5sBRwm0=
X-Received: by 2002:a17:90b:28c4:b0:32e:1b1c:f8b8 with SMTP id
 98e67ed59e1d1-3403a2f1869mr8283746a91.26.1761822590649; Thu, 30 Oct 2025
 04:09:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-3-24b601bbecc0@oss.qualcomm.com>
 <2960a6fc-106b-4280-b4d4-9c1a3a449454@oss.qualcomm.com> <0a47016c-1d7e-4026-92bb-a13ac2ce169b@oss.qualcomm.com>
 <gg7srymb2dspk4jeycc5su5gjl434ymgzapqqyqw7yq2marzue@ql27qx2ptuo6> <a52ff3b6-c5f3-48a8-a8d7-812026b0d87e@oss.qualcomm.com>
In-Reply-To: <a52ff3b6-c5f3-48a8-a8d7-812026b0d87e@oss.qualcomm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 30 Oct 2025 13:09:42 +0200
X-Gm-Features: AWmQ_bm0nqsGfZToTGMJZvwnm3Zigyl1Y1rqsBL9EH-Xv3C031bXjloOuVadfTc
Message-ID: <CAO9ioeWafyhCdcOt0V9DBwupvSbGg66T-JUL_2rhcTpxQxj2vw@mail.gmail.com>
Subject: Re: [PATCH 03/24] arm64: dts: qcom: Introduce Glymur base dtsi and
 CRD dts
To: Taniya Das <taniya.das@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-GUID: xj6GHIOO_lW2XTB8hS4OUEAQ_bS7XJCN
X-Proofpoint-ORIG-GUID: xj6GHIOO_lW2XTB8hS4OUEAQ_bS7XJCN
X-Authority-Analysis: v=2.4 cv=M/lA6iws c=1 sm=1 tr=0 ts=69034780 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=x9u-acLCX0oi0GpMQDsA:9 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDA5MCBTYWx0ZWRfX/iKCxfZh23ja
 GL5HVGNYrVXfgQBRDFpZ2qcjw0BPaP9SOF9aeT/MWHa491e6ftvpNbdx1I02BSJf5UhT9KrWhn7
 78K2182u//+YcOcur0CDcpq81tOU+gRrIM9V0rUd4XYUakgEplVcMAOF2GEp08VjiKgC4d6SLxO
 AwtCjKQOMTdOMxvFT9DWKe/ar1Z2yPv8EbOCO/oRYIgo7Q6Ft1Ka4+xaET3jgfEN6axrJPrD679
 zvxLavaFN/h/HUY8jzLLvSt+OaUt7MLYNUe/vpzBrgNKMRXSZAKog17jQLXqpwTgrEaUGxGbdvl
 UEaP+N2lzYbmn82YBgUW0Y4i9j03e4C0UQjI7kVPxbVTruA6l7GR+qlV3KHaHKtCo69seRgpcmj
 wQm9JvorbTFMbVAmgU8PMgDO55TmCQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_03,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 spamscore=0 clxscore=1015 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510300090

On Thu, 30 Oct 2025 at 12:44, Taniya Das <taniya.das@oss.qualcomm.com> wrot=
e:
>
>
>
> On 10/29/2025 4:06 PM, Dmitry Baryshkov wrote:
> > On Wed, Oct 29, 2025 at 03:30:54PM +0530, Taniya Das wrote:
> >>
> >>
> >> On 9/25/2025 3:46 PM, Konrad Dybcio wrote:
> >>>> +          tcsrcc: clock-controller@1fd5044 {
> >>>> +                  compatible =3D "qcom,glymur-tcsr";
> >>>> +                  reg =3D <0x0 0x1fd5044 0x0 0x48>;
> >>> We can map 0x1fd5000 - 0x1fd5094 inclusive, as that seems like a
> >>> logical subblock (this would require adjusting the driver)
> >>>
> >>
> >> Konrad, we encountered issues when trying to map regions beyond just t=
he
> >> clock reference registers. Normally, we map the entire address range o=
f
> >> a clock controller (CC) module in the device tree. However, for TCSRCC
> >> where CLKREF_EN registers are located within shared modules like TCSR =
or
> >> TLMM=E2=80=94we don't own the whole address space, and mapping the ful=
l range
> >> can overlap with other devices.
> >> To avoid this, we propose defining the base address as the first
> >> register actually used, and the size to only include up to the last
> >> register we use. This ensures we only map the relevant subblock,
> >> preventing conflicts with other device nodes.
> >
> > Then you need to behave slightly differently: map the full range at the
> > basic device (TLMM, TCSR, etc.) and then create TCSRCC as a child devic=
e
> > to that node (and use paren't regmap to access the registers).
> >
>
> Dmitry, I agree that this approach is ideal. However, the current
> hardware implementation isn=E2=80=99t consistent across multiple SoCs, wh=
ich
> means the driver design also needs to adapt. Given these differences, we
> decided to strictly map only the range of hardware registers that are
> actually used for clocks, rather than the entire module.

You are writing a driver for the platform, not a generic driver for
all the platforms.

>
> >>
> >> So want to keep the mapping same from the start of clockref clocks.
> >>
> >>> There's also a laaaarge pool of various TCSR_ registers between
> >>> the previous node and this one.. but we can leave that in case we
> >>> need to describe it in a specific way some day
> >>>> +                  #clock-cells =3D <1>;
> >>>> +                  #reset-cells =3D <1>;
> >>>> +          };
> >>>> +
> >>
> >> --
> >> Thanks,
> >> Taniya Das
> >>
> >
>
> --
> Thanks,
> Taniya Das
>


--=20
With best wishes
Dmitry

