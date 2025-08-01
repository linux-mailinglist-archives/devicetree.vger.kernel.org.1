Return-Path: <devicetree+bounces-201401-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E71D0B1869F
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 19:26:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0F483174F70
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 17:26:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED02A287502;
	Fri,  1 Aug 2025 17:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DJLVYNyZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DDAA27C15A
	for <devicetree@vger.kernel.org>; Fri,  1 Aug 2025 17:25:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754069154; cv=none; b=rbQ1n0xyXQAnijC8Uq/FJUqEfDZIcwOR3cTD5zZgPw6YTKNGglfLKiHNoFCz5yThbJ7hQ6q5JB+gPUBj5aRbQmrvaQQOdonGTyIqXhihT4NHJ8Nz/ehPNlOYNdZNNbEvqDtg61U+sijHk+7KI64UQxPt8ZHfrcZQcXCWppd4jXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754069154; c=relaxed/simple;
	bh=sIuF/8aOxW6N0Vqi3WYC1+znFpGO/lZfoaNzUR11puQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lQ2haTmVoLHRwhMvM2sL/ldgQ/rJzKJN4hhW+3uwG0lPy0r+wem/cosZx8f1HvGnEyTyVanmf3wg6NyKKhBDRJ0BNkTCEbi6SKGowfqvc/QwlxD+kf/IPObcX4B8zXLp3D+R/c8iw9xlPdoeY8xjIpHRjlr1CX4icXWN/ARjJKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DJLVYNyZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 571FNPlR024765
	for <devicetree@vger.kernel.org>; Fri, 1 Aug 2025 17:25:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XH/Vu6CobRgqM/vOahebRBPXbiiPDrFWUykHMIyxvbM=; b=DJLVYNyZxPOc2Uzh
	QgI97vYi3VEoTTL+vNNj7Brh0htiJVQl/imm8sTEL5a69E4uJbNO0MA5iDk8kWNO
	12wj2tlSttTN1M/E3kBEUd/c/0NLYDoPd+SN0E8uxqG7r1k5Eswn79OPIE0y/dzD
	MSODt2gaivvy6yz6SKh5jXQowtuKN8DHWYiZ7bmIQFLhYjb5S5Tje6uXun+FMG5w
	6BZwfHC5DxEAMRJ+NhN4K2lwaZfdQVKLCkNZke76KghlJRz72fgNgV5C+j1l1IW+
	q9MQgB8veNmt0qeEr47iVQ/Ei9pjdZifh1uEpwwyyTPYu3hmHXn9bwfS+FU2h526
	GfNftw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 488u651d06-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 01 Aug 2025 17:25:51 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ab7464e3bfso18598341cf.2
        for <devicetree@vger.kernel.org>; Fri, 01 Aug 2025 10:25:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754069147; x=1754673947;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XH/Vu6CobRgqM/vOahebRBPXbiiPDrFWUykHMIyxvbM=;
        b=nveQMzF2PuBRJ4hMc+tQN3JbLPPt+vmXLa5rybWQUwdB5yeXFQQB/xo+V8qk+wS3ge
         HSYEDMCRoHSX5D4FPghysemHccJGg49JRsVNjRfNt/qFuJz68SD+eduB8H2c8H4/rJRC
         mLyE0X1cOMXG52KUgSVEtIIstxj46y2O6Y5FPVPON/WuPEmfRoTtvXv49j6mqoy5gCe/
         DyzKKomGI+i6MrgsA4696BSibG/6pJB0G0QfK9ACbxwTTZEfAjKITdDJc41+NUvNhtDw
         b5qH6/2Da1XeUAi0+Nt+49ZapmDv/u0HR3+wEeYiNpHBQSpW9CKDEiQ9MZMe5pAEO2s9
         mgmw==
X-Forwarded-Encrypted: i=1; AJvYcCWcAZ7wciTr8aAFkCbAlCPXAbwdbCPxzGKfl+pjXimZXjqxdMUUegUOqnaM03a9qsUyB5hcQpc7r/Zl@vger.kernel.org
X-Gm-Message-State: AOJu0YwWNRbmsDmA4z6I+kqbY0w+2duY0eMf3mVFGwacKNe+oKWs8iiE
	/4yGRLcEI8FOsbx67rXLarBJbt3mx+TtmbmkeU+tXjOEQdsmRWH3Ps3hiBuny1f8H1m9XfMCsvb
	zMhY96aM6nNctSNtEPwUDc8L6DdCTSwe/LUdoouK2cRxYpfC2EcJTJaIWZS2q0OP+
X-Gm-Gg: ASbGncsB9wqZHKsuCMJwFWWphdYlIuZo0wzY3Tn3LfPKzaMr85cpLzPq6fFS7rM9m97
	MumVxyhbhPESIY0DY+luY7NVtZ1ucKEFGyCu7aLIC3ay9uK1iGe15cBjw33JRAEwxsNVv0C0sv0
	lx+lqyAwzyK41S0kNKUt0FcybhCpwmJEuRYz+nPc1jKlzR17Md89Us6ch+BX8mDtvgifM7KSjUT
	LGCTgMzYw4i41yfo0GM0BSWBb4JphDuxjzyQK0BHfT73G4bnJKzbipzaMS+fdsO1yis75w/EUBf
	/f+5nvAsXC/Zhsn0zzmxsypfk+jjvLKFhuQQlY8czss7aQBft4a6r/HjyRTvAm7wT5RvAas9WKc
	QpZKGBmqjM6BJTX9vNSKBZwutRPCqzJvPVL0jZz8AYviKmGq/xoY9
X-Received: by 2002:a05:622a:48b:b0:4ab:a29f:7e43 with SMTP id d75a77b69052e-4af10d214bfmr10037291cf.52.1754069146653;
        Fri, 01 Aug 2025 10:25:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFgLL7jhuBQ6ZyNfR0TafP/jDj/xzyrdf1/TwB1OEgjfW7g8Kv5psllQMvktISF8y4HunnQng==
X-Received: by 2002:a05:622a:48b:b0:4ab:a29f:7e43 with SMTP id d75a77b69052e-4af10d214bfmr10036801cf.52.1754069146142;
        Fri, 01 Aug 2025 10:25:46 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b88c99145sm653719e87.92.2025.08.01.10.25.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Aug 2025 10:25:45 -0700 (PDT)
Date: Fri, 1 Aug 2025 20:25:43 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Pengyu Luo <mitltlatltl@gmail.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: sc8280xp: Describe GPI DMA
 controller nodes
Message-ID: <4eg3xtjl5e2vyuyr6bxyowzs47rmbbixka2jnfpdq5hecaekox@dbadmm53a4fo>
References: <20250617090032.1487382-1-mitltlatltl@gmail.com>
 <20250617090032.1487382-3-mitltlatltl@gmail.com>
 <36f3ef2d-fd46-492a-87e6-3eb70467859d@oss.qualcomm.com>
 <CAH2e8h50mtsEpAZoUvYtD-HRMeuDQ4pcjq6P=0vsjvtZoajC-g@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAH2e8h50mtsEpAZoUvYtD-HRMeuDQ4pcjq6P=0vsjvtZoajC-g@mail.gmail.com>
X-Proofpoint-ORIG-GUID: bIUJfXaBAJbnKkIzcoqmw0bWvTP-bMdg
X-Proofpoint-GUID: bIUJfXaBAJbnKkIzcoqmw0bWvTP-bMdg
X-Authority-Analysis: v=2.4 cv=f+RIBPyM c=1 sm=1 tr=0 ts=688cf89f cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8 a=fg_vXjpDGMymyVAJzg0A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODAxMDEzNSBTYWx0ZWRfX7Z6QURj7j2Zs
 EM9fQBADEzOIOFo/lTEoHplXfW370gHIq/PQzUlR+qkUXzgnkXVLN+KRj7DGDvKl4RjGcyHUcbK
 xcvjwkoeSkXD4ykcPD17gPExOjxjUuTfkw2Yqcp7wsRV18dEz+EiPDBQ81UTRQG6x1pZsDJzOY4
 qNrztzYb7J945HGnvRn4Kci2v5RVk5RcVaT91OGuEG6iDwJxAsnwFH9GPHfnA+/uzpBvsPKVejq
 g63lq8MVP2wMJh1mennwjJRbs5yMMAdvKByi3seD6qQxrCr/RmSDl9tyY58et8DlhFMH/OakAUG
 T6A3msFFT0WiGNP/STCMjGcjlzUXx2SwOKeYkyvtSygr2BIpDFU2s8Bnp4YhwBX51jczsk5BCY+
 JHHbvQmDGgoRWY0LYVidZut960gEZ1T8j1u8F7QFTwQD/J0jaCxpakxJUvhISBc64vUpUJS7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-01_05,2025-08-01_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 malwarescore=0 mlxlogscore=760 mlxscore=0
 lowpriorityscore=0 suspectscore=0 phishscore=0 priorityscore=1501 bulkscore=0
 adultscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508010135

On Fri, Aug 01, 2025 at 10:27:55PM +0800, Pengyu Luo wrote:
> On Thu, Jul 31, 2025 at 6:33 AM Konrad Dybcio
> <konrad.dybcio@oss.qualcomm.com> wrote:
> >
> > On 6/17/25 11:00 AM, Pengyu Luo wrote:
> > > SPI on SC8280XP requires DMA (GSI) mode to function properly. Without
> > > it, SPI controllers fall back to FIFO mode, which causes:
> > >
> > > [    0.901296] geni_spi 898000.spi: error -ENODEV: Failed to get tx DMA ch
> > > [    0.901305] geni_spi 898000.spi: FIFO mode disabled, but couldn't get DMA, fall back to FIFO mode
> > > ...
> > > [   45.605974] goodix-spi-hid spi0.0: SPI transfer timed out
> > > [   45.605988] geni_spi 898000.spi: Can't set CS when prev xfer running
> > > [   46.621555] spi_master spi0: failed to transfer one message from queue
> > > [   46.621568] spi_master spi0: noqueue transfer failed
> > > [   46.621577] goodix-spi-hid spi0.0: spi transfer error: -110
> > > [   46.621585] goodix-spi-hid spi0.0: probe with driver goodix-spi-hid failed with error -110
> > >
> > > Therefore, describe GPI DMA controller nodes for qup{0,1,2}, and
> > > describe DMA channels for SPI and I2C, UART is excluded for now, as
> > > it does not yet support this mode.
> > >
> > > Note that, since there is no public schematic, this is derived from
> > > Windows drivers. The drivers do not expose any DMA channel mask
> > > information, so all available channels are enabled.
> > >
> > > Signed-off-by: Pengyu Luo <mitltlatltl@gmail.com>
> > > ---
> >
> > [...]
> >
> > > +             gpi_dma0: dma-controller@900000  {
> >
> > Double space before '{'
> >
> 
> Ack
> 
> > > +                     compatible = "qcom,sc8280xp-gpi-dma", "qcom,sm6350-gpi-dma";
> > > +                     reg = <0 0x00900000 0 0x60000>;
> > > +
> > > +                     interrupts = <GIC_SPI 244 IRQ_TYPE_LEVEL_HIGH>,
> > > +                                  <GIC_SPI 245 IRQ_TYPE_LEVEL_HIGH>,
> > > +                                  <GIC_SPI 246 IRQ_TYPE_LEVEL_HIGH>,
> > > +                                  <GIC_SPI 247 IRQ_TYPE_LEVEL_HIGH>,
> > > +                                  <GIC_SPI 248 IRQ_TYPE_LEVEL_HIGH>,
> > > +                                  <GIC_SPI 249 IRQ_TYPE_LEVEL_HIGH>,
> > > +                                  <GIC_SPI 250 IRQ_TYPE_LEVEL_HIGH>,
> > > +                                  <GIC_SPI 251 IRQ_TYPE_LEVEL_HIGH>,
> > > +                                  <GIC_SPI 252 IRQ_TYPE_LEVEL_HIGH>,
> > > +                                  <GIC_SPI 253 IRQ_TYPE_LEVEL_HIGH>,
> > > +                                  <GIC_SPI 254 IRQ_TYPE_LEVEL_HIGH>,
> > > +                                  <GIC_SPI 255 IRQ_TYPE_LEVEL_HIGH>,
> > > +                                  <GIC_SPI 256 IRQ_TYPE_LEVEL_HIGH>;
> >
> > The last entry is incorrect and superfluous, please remove
> >
> 
> Sure, I can remove it. But the last entry is here in qcgpi8280.inf

Nevertheless, it's not a GPI interrupt.

> 
> [Hardware_Registry_Base_8280]
> HKR,QUP\0,"NumGpii",%REG_DWORD%, 13
> HKR,Interrupt\0,"0",%REG_DWORD%, 276
> HKR,Interrupt\0,"1",%REG_DWORD%, 277
> HKR,Interrupt\0,"2",%REG_DWORD%, 278
> HKR,Interrupt\0,"3",%REG_DWORD%, 279
> HKR,Interrupt\0,"4",%REG_DWORD%, 280
> HKR,Interrupt\0,"5",%REG_DWORD%, 281
> HKR,Interrupt\0,"6",%REG_DWORD%, 282
> HKR,Interrupt\0,"7",%REG_DWORD%, 283
> HKR,Interrupt\0,"8",%REG_DWORD%, 284
> HKR,Interrupt\0,"9",%REG_DWORD%, 285
> HKR,Interrupt\0,"10",%REG_DWORD%, 286
> HKR,Interrupt\0,"11",%REG_DWORD%, 287
> HKR,Interrupt\0,"12",%REG_DWORD%, 288
> 
> > You can also enable the gpi_dma nodes by default
> >
> 
> Got it.
> 
> Best wishes,
> Pengyu

-- 
With best wishes
Dmitry

