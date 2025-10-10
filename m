Return-Path: <devicetree+bounces-225273-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 81073BCC17A
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 10:18:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3F4C24E49F5
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 08:18:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D63F223BCE3;
	Fri, 10 Oct 2025 08:17:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OK4ShV8/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 778BA1991D2
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 08:17:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760084279; cv=none; b=VMe73k2rGY9Or7rGDMeZHdsaDAfZeqBX4wN2kmTzTi11V54mQJJCqm0+lUkplbr9LkTgblPGnqfR0YskgZHyzD1d2YPgR7tYkf3NQD8sjmLIsmF6YjIncUS8a6e3pD1QH8/QeAQjzy8XZ4+cu/zIa7Efek1CMzTFvWFK/oGu7hI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760084279; c=relaxed/simple;
	bh=yfYeqcroS5xgWbAVXjMzc1T3galiiATxi9pHmL6CUJg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N1EDQEv3fpWEUbfeHkCbI1rgzi8kiKIcwLIZI3yQcL8q+lAtYs5TfnIimgHiRoiKjys8T8TpcelWTysRFYvtt0k8PY3eg4ovRvj4KZpt2Txp8/DxQPc9prU6n4HHisvEfg1mO8/K3g73YcBjkyOrd1fE16AtT3gy1r7OgQA1gZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OK4ShV8/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59A6X0FU010071
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 08:17:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	R0h7LMY++CcGG3FmpZOsZ/ftlL+iXEizw8NjlMLU2yM=; b=OK4ShV8/LbEuW8df
	84rmvV1sV9e32a+iMEim1eSd1wg3mNRV3TB0BZ/Np/TIp0K8rws7eXs3Sh+RQatA
	yFUrq0MuZIp5gaa2AsT5Y23lGugORSLP9GYpWaFp2GLVK5eMA0JrTdeOByYrvesa
	rDnmQxwQ6EHWa9ZccP60p+0gk8TWLJ33E8oEW20o/TahLUf+J7FmG5lyGHdtTr6e
	ICG61oqaC7V+tbnRBnPjAyCFz8idhKrlB60nQLAb6syGbP1yC8JlPfEUS9XtuZ8c
	I7iWUPWqSzz0EiRuN7GOjhOctTy1xFz09Cvro36h21a6zv+BCCPXU5K09MBa1WgR
	L1BGVA==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4nwkka-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 08:17:56 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-857003e911fso626099385a.3
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 01:17:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760084275; x=1760689075;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R0h7LMY++CcGG3FmpZOsZ/ftlL+iXEizw8NjlMLU2yM=;
        b=ZPfOxoAgeH3GiCI8L7kgqsJ9AKrT6sqaIAxwp0e/4YIxm0oSlOunA65Qm6MUfFBxy2
         4If6X5JEToJB+lqgfAeQEJ1dofcUjl2EyFa1DHxbWlWRWSjAOg6dIczRrZxaoGdP/VMD
         2bJiT+tStKofqqaFpd48lTYT53IieLP3jAmMVW1QoMF2qlDMs6QVDssecYctJE30eL97
         U3YMDcUq2TDECcVaIxWBa30wuIG/9UGCE9ngVvVscBfIaqgjQUIkRRLXoiUnce07MrRS
         0LO+Fysg5vKYUN5RiwoZ4vN7BoVq2f7E0VMdNrQlt4+KfAJK0XzmKB8whx+UW6P1+tWl
         gbBw==
X-Forwarded-Encrypted: i=1; AJvYcCXM+nPJ3BMRHvTRzytGlefQ9MA1EYOVgx4EUKQrtxgr1mcUimNmk+ClaVm5Jg3BIyEhtcAYi/vw5p2u@vger.kernel.org
X-Gm-Message-State: AOJu0YwsMGdwuGKkYTwTIcvvIyck9qfOI/FH9u/BvwYfUEtXQVMpLwSq
	FXwhNj3gwXzF8mrvpu4xuj5sSSjSG+ORnlzmOEDcaLPi5a8wTa36Moi97xx6Kiso0JckQaySR6i
	OtIvgQabrSJFZbS321V9JSfI/oKchtSueJW3+BBZ6zEVE9OjiB5CKSt2jgTKoYbHJ
X-Gm-Gg: ASbGnctET49AjY3BwR1aOQKtIWWAUKHuRZ4ng6WeC0hn2EFdn8Tyik7dr7XBRXpcrfr
	ssgldAzmLBTfFEXgouJmzp6fN2fHcMqy2s8ASKjNw+uDs6ZR9qUecgXHHIzVoXVu5cDigq5p/D+
	JGhby6TXYBcn0VSC8SphL7gZ+aBmTb0woy2NMvn+Ho5osx6JsxQaVPVZFMKXH0tchOvDWJl+z59
	VykJTBXg11P+nCvzzUOKGc8STLcOkhP6/jf5LTuWNwmK9ZEApZ1v3xVJL4qrjbmnGpgyR0JQdqE
	4BtsnDUMaTm9YRP301l6J+y/tvBbBaE7pTC8ZcbtFcUFkvGYSLfMWPKmL4eHzib2rzNVm0sv991
	4c1VL933F0fuKcorDs4qaXrTV4y2isR+Uo4f2YGp6OXHo6uVfoA+z
X-Received: by 2002:a05:620a:4589:b0:84a:af34:5b7f with SMTP id af79cd13be357-88352d9a115mr1571589785a.75.1760084275007;
        Fri, 10 Oct 2025 01:17:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFqJKvKBninr47vHCLbZBNwbFCwGtZsHZAxnx3viW8WDNIQU1WwGBxDOZRm7AIlfz3NSZrNFg==
X-Received: by 2002:a05:620a:4589:b0:84a:af34:5b7f with SMTP id af79cd13be357-88352d9a115mr1571585685a.75.1760084274276;
        Fri, 10 Oct 2025 01:17:54 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5908856e301sm647559e87.93.2025.10.10.01.17.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Oct 2025 01:17:53 -0700 (PDT)
Date: Fri, 10 Oct 2025 11:17:51 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: David Heidelberg <david@ixit.cz>
Cc: Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Amit Pundir <amit.pundir@linaro.org>,
        Casey Connolly <casey@connolly.tech>,
        Joel Selvaraj <foss@joelselvaraj.com>,
        Sumit Semwal <sumit.semwal@linaro.org>, Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: Add support for Pixel 3 and Pixel
 3 XL
Message-ID: <wl2x6yhxuufzpovfqoikmicacupmylg6pez75vurglubtwj6ov@pppg4gsi63ox>
References: <20251005-pixel-3-v1-0-ab8b85f6133f@ixit.cz>
 <20251005-pixel-3-v1-2-ab8b85f6133f@ixit.cz>
 <n4xims4y5sssqxkchg2tikc7idkzds5ru7ayidcgxdfx77je2d@qo34qucbebnn>
 <0f5f2793-13d6-416e-ad0e-1840e22b753c@ixit.cz>
 <6yqj2yblobathatoilox3fk75mvlsif4sley2zb2o4qv2elvt3@y7t7rsaczpad>
 <d164bc55-1faf-49d6-8ec7-8242bfdfe55e@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d164bc55-1faf-49d6-8ec7-8242bfdfe55e@ixit.cz>
X-Proofpoint-ORIG-GUID: aA9AqOdMXF_khg5WKXViMG8Mh0xdUZ1R
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX6qLjD0X05iCg
 tFAFNnYBdmvjC1VsgV92L+cOLlMP/nKeEPh95R7MHMYmXKVzKKUwbWcx+yEiQE/n9shRcmf5Qar
 voeiMi/Et4nWJc4cyKNB78hSFceTfrWDLnfPhIM+UfzRPbRqTCDe60htyk6T6fHlnOuX4+ccljr
 OCKck68yPlVlyt+mSEzCPmfwMxZItv/CegdTDCFvZGZxVl6QDWuK4IdzUqW1J8Y4dVLTnzNi3Jl
 dE2q+YYFFuvcfN509Mu7IVf7hoLd22sx6GLjUS4CuIFh9y/GKLsiPkfxoXKcFSCQ006wPpfAmRe
 nAewsqt9usDoOD5A5eXqLNrtORyBY3QDEvctx2+rtxa66qfFPQDI0tqAjriyo8N58swAa+UFWBo
 o2u2rV+rC6ZqMLXVaBHQUcgoTItH2A==
X-Proofpoint-GUID: aA9AqOdMXF_khg5WKXViMG8Mh0xdUZ1R
X-Authority-Analysis: v=2.4 cv=b6a/I9Gx c=1 sm=1 tr=0 ts=68e8c134 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=x6icFKpwvdMA:10 a=Gbw9aFdXAAAA:8 a=p0WdMEafAAAA:8 a=NEAV23lmAAAA:8
 a=KKAkSRfTAAAA:8 a=WFa1dZBpAAAA:8 a=VwQbUJbxAAAA:8 a=i588lBP2PZLVzY6cPncA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=9vIz8raoGPyDa4jBFAYH:22 a=cvBusfyB2V15izCimMoJ:22 a=MZguhEFr_PtxzKXayD1K:22
 a=poXaRoVlC6wW9_mwW8W4:22 a=pHzHmUro8NiASowvMSCR:22 a=n87TN5wuljxrRezIQYnT:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-10_01,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0 phishscore=0
 clxscore=1015 spamscore=0 impostorscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On Fri, Oct 10, 2025 at 09:51:37AM +0200, David Heidelberg wrote:
> 
> 
> On 09/10/2025 23:50, Dmitry Baryshkov wrote:
> > On Thu, Oct 09, 2025 at 11:20:49PM +0200, David Heidelberg wrote:
> > > On 06/10/2025 00:03, Dmitry Baryshkov wrote:
> > > > On Sun, Oct 05, 2025 at 03:16:29PM +0200, David Heidelberg via B4 Relay wrote:
> > > > > From: David Heidelberg <david@ixit.cz>
> > > > > 
> > > > > This adds initial device tree support for the following phones:
> > > > > 
> > > > >    - Google Pixel 3 (blueline)
> > > > >    - Google Pixel 3 XL (crosshatch)
> > > > 
> > > > Great to finally see it being submitted!
> > > > 
> > > > > 
> > > > > Both phone boards use the same identifiers and differ only slightly
> > > > > in their connected peripherals.
> > > > > 
> > > > > Supported functionality includes:
> > > > >    - Debug UART
> > > > >    - UFS
> > > > >    - Charger
> > > > >    - USB-C (peripheral mode)
> > > > >    - Display (Pixel 3 only)
> > > > 
> > > > No remoteprocs / IPA / GPU / Venus / WiFi / BT? The firmware is
> > > > accessible to download from Google and it can be further repackaged (but
> > > > not redistributed). See [1], [2].
> > > 
> > > Since I didn't have Pixel 3 at hand to test (I sent the series when
> > > attending event where someone had Pixel 3 ;-) ), I was aiming to merge MVP..
> > > more precisely, Minimal Viable Device-tree (MVD).
> > 
> > If you have Pix3 XL, you can use it for both. I think the only major
> > difference is the screen.
> 
> Yes, screen and battery.
> 
> > 
> > > Until the end of the month I should have also Pixel 3, so I'll definitely
> > > continue to enable all the mentioned features, but as this DTB is also
> > > needed for u-boot [1], I would prefer to get MVD in ASAP, mostly because of
> > > the fastboot is useless for loading mainline kernel.
> > 
> > Hmm? I was using onboard ABL and fastboot.
> 
> Most likely older bootloader, which doesn't insist on TEXT_OFFSET 0x80000 :)
> I have already new one, so without u-boot that's one extra revert (which I
> don't feel that comfortable with on top of mainline).

No. A new one + TEXT_OFFSET patch.

> 
> David>
> > > 
> > > [1] https://gitlab.postmarketos.org/tauchgang
> > > 
> > > Before I'll send the v2, the progress can be tracked in
> > >    https://gitlab.com/dhxx/linux/-/commits/b4/pixel-3
> > > 
> > > Thank you both for the review!
> > > David
> > > 
> > > > 
> > > > The phones share all firmware except for the bdwlan, so hopefully you
> > > > can add 'Google/blueline/foo.mbn' to the common file.
> > > > 
> > > > [1] https://github.com/linux-msm/meta-qcom-extras/blob/master/recipes-bsp/firmware-nexus/firmware-qcom-pixel3.bb
> > > > [2] https://github.com/linux-msm/meta-qcom-extras/blob/master/recipes-bsp/firmware-nexus/firmware-qcom-pixel.inc
> > > > 
> > > > > 
> > > > > GPIOs 0–3 and 81–84 are not accessible from the application CPUs,
> > > > > so they are marked as reserved to allow the Pixel 3 to boot.
> > > > > 
> > > > > The rmtfs region is allocated using UIO, making it technically "dynamic."
> > > > > 
> > > > > Its address and size can be read from sysfs:
> > > > > 
> > > > > $ cat /sys/class/uio/uio0/name
> > > > > /sys/class/uio/uio0/maps/map0/addr
> > > > > 0x00000000f2701000
> > > > > 
> > > > > $ cat /sys/class/uio/uio0/maps/map0/size
> > > > > 0x0000000000200000
> > > > > 
> > > > > Like the OnePlus 6, the Pixel 3 requires 1 kB of reserved memory on either
> > > > > side of the rmtfs region to work around an XPU bug that would otherwise
> > > > > cause erroneous violations when accessing the rmtfs_mem region.
> > > > > 
> > > > > Co-developed-by: Amit Pundir <amit.pundir@linaro.org>
> > > > > Signed-off-by: Amit Pundir <amit.pundir@linaro.org>
> > > > > Co-developed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> > > > > Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> > > > > Co-developed-by: Casey Connolly <casey@connolly.tech>
> > > > > Signed-off-by: Casey Connolly <casey@connolly.tech>
> > > > > Co-developed-by: Joel Selvaraj <foss@joelselvaraj.com>
> > > > > Signed-off-by: Joel Selvaraj <foss@joelselvaraj.com>
> > > > > Co-developed-by: Sumit Semwal <sumit.semwal@linaro.org>
> > > > > Signed-off-by: Sumit Semwal <sumit.semwal@linaro.org>
> > > > > Co-developed-by: Vinod Koul <vkoul@kernel.org>
> > > > > Signed-off-by: Vinod Koul <vkoul@kernel.org>
> > > > > Signed-off-by: David Heidelberg <david@ixit.cz>
> > > > > ---
> > > > >    arch/arm64/boot/dts/qcom/Makefile                  |   2 +
> > > > >    .../arm64/boot/dts/qcom/sdm845-google-blueline.dts | 128 ++++++
> > > > >    arch/arm64/boot/dts/qcom/sdm845-google-common.dtsi | 467 +++++++++++++++++++++
> > > > >    .../boot/dts/qcom/sdm845-google-crosshatch.dts     | 137 ++++++
> > > > >    4 files changed, 734 insertions(+)
> > > > > 
> > > > > diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> > > > > index 4bfa926b6a085..ba05dc935dc7c 100644
> > > > > --- a/arch/arm64/boot/dts/qcom/Makefile
> > > > > +++ b/arch/arm64/boot/dts/qcom/Makefile
> > > > > @@ -239,6 +239,8 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sdm845-db845c.dtb
> > > > >    sdm845-db845c-navigation-mezzanine-dtbs	:= sdm845-db845c.dtb sdm845-db845c-navigation-mezzanine.dtbo
> > > > >    dtb-$(CONFIG_ARCH_QCOM)	+= sdm845-db845c-navigation-mezzanine.dtb
> > > > > +dtb-$(CONFIG_ARCH_QCOM)	+= sdm845-google-crosshatch.dtb
> > > > > +dtb-$(CONFIG_ARCH_QCOM)	+= sdm845-google-blueline.dtb
> > > > >    dtb-$(CONFIG_ARCH_QCOM)	+= sdm845-lg-judyln.dtb
> > > > >    dtb-$(CONFIG_ARCH_QCOM)	+= sdm845-lg-judyp.dtb
> > > > >    dtb-$(CONFIG_ARCH_QCOM)	+= sdm845-mtp.dtb
> > > > > diff --git a/arch/arm64/boot/dts/qcom/sdm845-google-blueline.dts b/arch/arm64/boot/dts/qcom/sdm845-google-blueline.dts
> > > > > new file mode 100644
> > > > > index 0000000000000..df88982018b9e
> > > > > --- /dev/null
> > > > > +++ b/arch/arm64/boot/dts/qcom/sdm845-google-blueline.dts
> > > > > @@ -0,0 +1,128 @@
> > > > > +// SPDX-License-Identifier: GPL-2.0-only
> > > > > +
> > > > > +/dts-v1/;
> > > > > +
> > > > > +#include "sdm845-google-common.dtsi"
> > > > > +
> > > > > +/ {
> > > > > +	model = "Google Pixel 3";
> > > > > +	compatible = "google,blueline", "qcom,sdm845";
> > > > > +
> > > > > +	battery: battery {
> > > > > +		compatible = "simple-battery";
> > > > > +
> > > > > +		charge-full-design-microamp-hours = <2970000>;
> > > > > +		voltage-min-design-microvolt = <3600000>;
> > > > > +		voltage-max-design-microvolt = <4400000>;
> > > > > +	};
> > > > > +
> > > > > +	chosen {
> > > > > +		#address-cells = <2>;
> > > > > +		#size-cells = <2>;
> > > > > +		ranges;
> > > > > +
> > > > > +		/* for u-boot */
> > > > > +		framebuffer: framebuffer@9d400000 {
> > > > > +			compatible = "simple-framebuffer";
> > > > > +			reg = <0 0x9d400000 0 (2160 * 1080 * 4)>;
> > > > > +			width = <1080>;
> > > > > +			height = <2160>;
> > > > > +			stride = <(1080 * 4)>;
> > > > > +			format = "a8r8g8b8";
> > > > > +		};
> > > > > +	};
> > > > > +
> > > > > +	reserved-memory {
> > > > > +		framebuffer_region@9d400000 {
> > > > 
> > > > Can't we use cont_splash_mem and let bootloader set it?
> > > > 
> > > > > +			no-map;
> > > > > +			reg = <0 0x9d400000 0 0x02400000>; // FIXME
> > > > > +		};
> > > > > +	};
> > > > > +};
> > > > > +
> > > > > +&gmu {
> > > > > +	status = "okay";
> > > > > +};
> > > > 
> > > > No need to, it's enabled by default.
> > > > 
> > > > > +
> > > > > +&mdss {
> > > > > +	status = "okay";
> > > > > +};
> > > > > +
> > > > > +&mdss_dsi0 {
> > > > > +	status = "okay";
> > > > > +	vdda-supply = <&vdda_mipi_dsi0_1p2>;
> > > > > +
> > > > > +	ports {
> > > > > +		port@1 {
> > > > > +			endpoint {
> > > > > +				remote-endpoint = <&panel_in>;
> > > > > +				data-lanes = <0 1 2 3>;
> > > > > +				qcom,te-source = "mdp_vsync_e";
> > > > 
> > > > &mdss_dsi1_out {
> > > > 	remote-endpoint = <&panel_in>;
> > > > 	.....
> > > > };
> > > > 
> > > > 
> > > > > +			};
> > > > > +		};
> > > > > +	};
> > > > > +
> > > > > +	panel@0 {
> > > > > +		compatible = "lg,sw43408";
> > > > > +		reg = <0>;
> > > > > +
> > > > > +		vddi-supply = <&vreg_l14a_1p88>;
> > > > > +		vpnl-supply = <&vreg_l28a_3p0>;
> > > > > +
> > > > > +		reset-gpios = <&tlmm 6 GPIO_ACTIVE_LOW>;
> > > > > +
> > > > > +		pinctrl-names = "default";
> > > > > +		pinctrl-0 = <&panel_reset_pins &panel_te_pin &panel_pmgpio_pins>;
> > > > > +
> > > > > +		port {
> > > > > +			panel_in: endpoint {
> > > > > +				remote-endpoint = <&mdss_dsi0_out>;
> > > > > +			};
> > > > > +		};
> > > > > +	};
> > > > > +};
> > > > > +
> > > > > +&mdss_dsi0_out {
> > > > > +	remote-endpoint = <&panel_in>;
> > > > > +	data-lanes = <0 1 2 3>;
> > > > > +};
> > > > > +
> > > > > +&mdss_dsi0_phy {
> > > > > +	vdds-supply = <&vdda_mipi_dsi0_pll>;
> > > > > +
> > > > > +	status = "okay";
> > > > > +};
> > > > > +
> > > > > +&pm8998_gpios {
> > > > > +	panel_pmgpio_pins: panel-pmgpio-active-state {
> > > > 
> > > > Are these two actually used by the panel? I think they were only used
> > > > for sw43402, but not for sw43408.
> > > > 
> > > > > +		pins = "gpio2", "gpio5";
> > > > > +		function = "normal";
> > > > > +		input-enable;
> > > > > +		bias-disable;
> > > > > +		power-source = <0>;
> > > > > +	};
> > > > > +};
> > > > > +
> > > > > +
> > > > > +	volume-keys {
> > > > 
> > > > gpio-keys ?
> > > > 
> > > > > +		compatible = "gpio-keys";
> > > > > +		label = "Volume keys";
> > > > > +		autorepeat;
> > > > > +
> > > > > +		pinctrl-names = "default";
> > > > > +		pinctrl-0 = <&volume_up_gpio>;
> > > > > +
> > > > > +		key-vol-up {
> > > > > +			label = "Volume Up";
> > > > > +			linux,code = <KEY_VOLUMEUP>;
> > > > > +			gpios = <&pm8998_gpios 6 GPIO_ACTIVE_LOW>;
> > > > > +			debounce-interval = <15>;
> > > > > +		};
> > > > > +	};
> > > > > +
> > > > > +	vph_pwr: vph-pwr-regulator {
> > > > 
> > > > Nit: BCP is regulator-foo-bar
> > > > 
> > > > > +		compatible = "regulator-fixed";
> > > > > +		regulator-name = "vph_pwr";
> > > > > +		regulator-min-microvolt = <3700000>;
> > > > > +		regulator-max-microvolt = <3700000>;
> > > > > +	};
> > > > > +
> > > > > +	vreg_s4a_1p8: vreg-s4a-1p8-regulator {
> > > > > +		compatible = "regulator-fixed";
> > > > > +		regulator-name = "vreg_s4a_1p8";
> > > > > +
> > > > > +		regulator-min-microvolt = <1800000>;
> > > > > +		regulator-max-microvolt = <1800000>;
> > > > > +		regulator-always-on;
> > > > > +		regulator-boot-on;
> > > > > +
> > > > > +		vin-supply = <&vph_pwr>;
> > > > > +	};
> > > > > +};
> > > > > +
> > > > > diff --git a/arch/arm64/boot/dts/qcom/sdm845-google-crosshatch.dts b/arch/arm64/boot/dts/qcom/sdm845-google-crosshatch.dts
> > > > > new file mode 100644
> > > > > index 0000000000000..dc9938ffc0ab8
> > > > > --- /dev/null
> > > > > +++ b/arch/arm64/boot/dts/qcom/sdm845-google-crosshatch.dts
> > > > > @@ -0,0 +1,137 @@
> > > > > +// SPDX-License-Identifier: GPL-2.0-only
> > > > > +
> > > > > +/dts-v1/;
> > > > > +
> > > > > +#include "sdm845-google-common.dtsi"
> > > > > +
> > > > > +/ {
> > > > > +	model = "Google Pixel 3 XL";
> > > > > +	compatible = "google,crosshatch", "qcom,sdm845";
> > > > > +
> > > > > +	battery: battery {
> > > > > +		compatible = "simple-battery";
> > > > > +
> > > > > +		charge-full-design-microamp-hours = <3480000>;
> > > > > +		voltage-min-design-microvolt = <3600000>;
> > > > > +		voltage-max-design-microvolt = <4400000>;
> > > > > +	};
> > > > > +
> > > > > +	chosen {
> > > > > +		#address-cells = <2>;
> > > > > +		#size-cells = <2>;
> > > > > +		ranges;
> > > > 
> > > > These are all the same as the -blueline. Please move common options to
> > > > the -common.dtsi
> > > > 
> > > > > +
> > > > > +		/* for u-boot */
> > > > > +		framebuffer: framebuffer@9d400000 {
> > > > > +			compatible = "simple-framebuffer";
> > > > > +			reg = <0 0x9d400000 0 (2960 * 1440 * 4)>;
> > > > > +			width = <1440>;
> > > > > +			height = <2960>;
> > > > > +			stride = <(1440 * 4)>;
> > > > > +			format = "a8r8g8b8";
> > > > > +		};
> > > > > +	};
> > > > > +
> > > > > +	reserved-memory {
> > > > > +		framebuffer_region@9d400000 {
> > > > > +			no-map;
> > > > > +			reg = <0 0x9d400000 0 0x02400000>;
> > > > > +		};
> > > > > +	};
> > > > > +};
> > > > > +
> > > > > +&gmu {
> > > > > +	status = "okay";
> > > > > +};
> > > > > +
> > > > > +&mdss {
> > > > 
> > > > More and more common properties. Please move them to the common file.
> > > 
> > > Sorry about this, the mdss nodes got in by accident, the display driver for
> > > crosshatch is WIP.>
> > > > > +	status = "okay";
> > > > > +};
> > > > > +
> > > > > +&mdss_dsi0 {
> > > > > +	vdda-supply = <&vdda_mipi_dsi0_1p2>;
> > > > > +
> > > > > +	status = "okay";
> > > > > +
> > > > > +	ports {
> > > > > +		port@1 {
> > > > > +			endpoint {
> > > > > +				remote-endpoint = <&panel_in>;
> > > > > +				data-lanes = <0 1 2 3>;
> > > > > +				qcom,te-source = "mdp_vsync_e";
> > > > > +			};
> > > > > +		};
> > > > > +	};
> > > > > +
> > > > > +	panel@0 {
> > > > > +		compatible = "samsung,s6e3ha8";
> > > > > +		reg = <0>;
> > > > > +
> > > > > +		vci-supply = <&vreg_l28a_3p0>; // downstream
> > > > > +		vdd3-supply = <&vreg_l28a_3p0>;
> > > > > +		vddr-supply = <&vreg_l14a_1p88>;
> > > > > +
> > > > > +		reset-gpios = <&tlmm 6 GPIO_ACTIVE_LOW>;
> > > > > +
> > > > > +		pinctrl-names = "default";
> > > > > +		pinctrl-0 = <&panel_reset_pins &panel_te_pin &se8_spiflash &panel_pmgpio_pins>;
> > > > 
> > > > - Why do you need spiflash here?
> > > > - I don't think this uses pmgpios too.
> > > > 
> > > > > +
> > > > > +		port {
> > > > > +			panel_in: endpoint {
> > > > > +				remote-endpoint = <&mdss_dsi0_out>;
> > > > > +			};
> > > > > +		};
> > > > > +	};
> > > > > +};
> > > > > +
> > > > > +&mdss_dsi0_out {
> > > > > +	data-lanes = <0 1 2 3>;
> > > > > +	remote-endpoint = <&panel_in>;
> > > > > +};
> > > > > +
> > > > > +&mdss_dsi0_phy {
> > > > > +	vdds-supply = <&vdda_mipi_dsi0_pll>;
> > > > > +
> > > > > +	status = "okay";
> > > > > +};
> > > > > +
> > > > > +&pm8998_gpios {
> > > > > +	panel_pmgpio_pins: panel-pmgpio-active-state {
> > > > > +		pins = "gpio2", "gpio5";
> > > > > +		function = "normal";
> > > > > +		input-enable;
> > > > > +		bias-disable;
> > > > > +		power-source = <0>;
> > > > > +	};
> > > > > +};
> > > > > +
> > > > > +&tlmm {
> > > > > +	se8_spiflash: se8-spiflash-state {
> > > > > +		pins = "gpio65", "gpio66", "gpio67", "gpio68";
> > > > > +		function = "gpio";
> > > > > +		input-enable;
> > > > > +		bias-disable;
> > > > > +	};
> > > > > +
> > > > > +	panel_te_pin: panel-te-state {
> > > > > +		pins = "gpio12";
> > > > > +		function = "mdp_vsync";
> > > > > +		drive-strength = <2>;
> > > > > +		bias-pull-down;
> > > > > +	};
> > > > > +
> > > > > +	panel_reset_pins: panel-active-state {
> > > > > +		pins = "gpio6";
> > > > > +		function = "gpio";
> > > > > +		drive-strength = <8>;
> > > > > +		bias-disable;
> > > > > +	};
> > > > > +
> > > > > +	panel_suspend: panel-suspend-state {
> > > > > +		pins = "gpio6";
> > > > > +		function = "gpio";
> > > > > +		drive-strength = <2>;
> > > > > +		bias-pull-down;
> > > > > +	};
> > > > > +
> > > > > +};
> > > > > 
> > > > > -- 
> > > > > 2.51.0
> > > > > 
> > > > > 
> > > > 
> > > 
> > > -- 
> > > David Heidelberg
> > > 
> > 
> 
> -- 
> David Heidelberg
> 

-- 
With best wishes
Dmitry

