Return-Path: <devicetree+bounces-232985-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 74B13C1DDC0
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 01:08:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ED9E73B4AF7
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 00:08:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 951C681AA8;
	Thu, 30 Oct 2025 00:07:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SkF5x2/r";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TgGNgoal"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F24DC524D1
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 00:07:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761782878; cv=none; b=R8UM2rPPfZTOI581UN1i1svnLQbtthI6hDscHN+NvaVPGuM7VS8fL74ZwAa3CA3ikk2erYIeVOpN6zITog8LZgVWGKKGQhP3+BNXGg5bPybVQjKyb9cJhhRgkr0gimRCU+q8GDaKKdsAtUdTn9rOQV86yDaMCzUtfohw+AQU+iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761782878; c=relaxed/simple;
	bh=4SGK36zFajssmUp5z75EdK9orsWAZH8YqPumzDLphis=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uCyiexbxr/p55lY0t78mpuVXGBzoPTIUkVXyqy1adfAME/TED5B+5a+/tF9fPFjJILpwH5eGQTV8zSVWeowsT0j8/HGUO1KgWaBQJdT4B7MY7eW8U0QO6vC5wi9xMwX6Nm+F1eCywog5lWxCKFdY9osvfKMGBAMaTjtb2f4A3eA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SkF5x2/r; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TgGNgoal; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59TLGlo21655594
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 00:07:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=X+yVsydLnIIHWGZobrur1ZEJ
	jdp8Ys9U5JrzQcVNRyo=; b=SkF5x2/rAGjr9OGmuCb1OIyJ8rwlSMDamA2dYYxn
	C/+GgCTLf63v69b6ZErBCihG1e9PGHMn4wU2sX94bWPba2ysjELX0YBNLFKjagJb
	rIgyEJbaHEF4udqAP/2XIVdtn1LQ4w8wc52yhAcfTYROIfcDd5/fuTXe9u/dr5Wd
	6ZH/HFCRIP+9YvSOonagH5cy5WbE2WoO9fZWPj0VSamQX1IwZJ8zMpFCVXpmPz5J
	ycLXFMvBSKGHCsLez4fVD+QATmeXh1/quRQ4yCdPtBUn9hdT7IwdGKVeqCNG2Aic
	JSnYNQKy32xhsxuOvIVkEgmR6XBVpL/uCd75833MaxbGOQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a3tptre5p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 00:07:56 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-89fcdd9f931so55935585a.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 17:07:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761782875; x=1762387675; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=X+yVsydLnIIHWGZobrur1ZEJjdp8Ys9U5JrzQcVNRyo=;
        b=TgGNgoaleZKZQP2LI/FW1viy+Ye/+mD25gNXbEKqOoigbKCC9i4iVNfF2VwLXeicWm
         OQVi1OmqB7hdhNiwLK/+Um7ynCr3MLy7lSLWBHTsyQ+moxiAsjtDPwOxiSFYVGlEUZiL
         d1leHDR/VZoAYHvvIsgX09PZ22QAAyCuef1vZQypkHIS9m2Xd7G2Wr43luTI5XPNcwKI
         TWF2c4scYQpvg5RVUghMCBmacRTwwnYvqqM4R81T0Szxppxh74S6gGrImSfIfmk3yg/x
         g42O7SbRQBKEthruqXMIY8mr55MtWr/k6IVxavyaIBuASH+pjKQKmXYjGYR6W/hFiS03
         WKoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761782875; x=1762387675;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X+yVsydLnIIHWGZobrur1ZEJjdp8Ys9U5JrzQcVNRyo=;
        b=U9vX+a+6bLOl7WlWjLAqtimlDwNMjn641NP6qf+2VNP88kW3lxNqeulIV1pU4tvDuN
         ylbLwmjjWwOiROKmWxOSclrpOYssypBdwBo3hWrV1Tt4AAzX7xa719BGxJ51TILrf+F8
         J2WDV9GWcv1IepF3Ijv9wSXWhtbod2fsOe4Z7+T6xB39Rbk2rMwj3tkJNR8wmqzsnG63
         LqUhp7MW4HTvb9mQdJ4s1KP9rPWjgU9nHw8IdoQ8lFXfl7VGaDrjb92tnnrxGwf25WYD
         aG5zbonF/X3vqfhkwh3/04PRvSB2rzqlbV1K+GosGsH9QAv3Zjo/eCk747d/+u1OgS26
         kdjA==
X-Forwarded-Encrypted: i=1; AJvYcCW86KZTKj44Ex6NgztCGp4HHTu06dNrA/vGnHFg5p6eHp19P330MExHyElF63fjC0gVFUEwiAeGFIed@vger.kernel.org
X-Gm-Message-State: AOJu0YzCloCTp/Lg+qcyTF4JZ2YwI1lSCXqYAwzNOS5e2LQU4rHd/cJG
	tls5U3+XI3o6r6gg+46Yc054txChfAiYlWm5LMWg6COnz4LzmfNWqNFmwaVwltPeMBd9ucJ/nmm
	ES8fBDDxD2i2/+og42eCiIe6GK9ogzAlJh2OyZps4FADlqeUMm5/qgMZafHdRpPDN
X-Gm-Gg: ASbGncvE7EIeL1taqc5DhD/4y47SsXD4LHw7I515Xo6agbOHq7DwKiKc3iUJSfS+Jyb
	DAQmo6DWHQhB3JDPXdRG/cg/lH94BiBNinCa2qhqkB05NS4rSY1b1Vem7aB5l9qtEKhsty7Ix5b
	XvYQWRZsyrDRtzbv0bxOytebtTw6cdZxqD3JXVSEG2gMZ587V8mwzZ+1Lh5CG4SjabT8bnb1u2N
	Lw20sYb2Y0D7Zyj9t88xP71ASNfh+xHiWTqLP6xGI/tY886kuvc+q38lckDsZmlseeSoBoVf3gu
	vybZzDMNhOS3zgrT4Q2TkNbcWCsQSb1IgZSgw/kGgCEfpol1x4NfJj4+KiEqtL5GhFKwfcDc26j
	Qzx0HpYNb+PjKEp6ld/qKcpvIOS3LVAEGyZNs3lcCJ/yNWvuTPEFVh8A3Si20WJ6ykEMV7tiQep
	fTElcbylK9Y1vV
X-Received: by 2002:a05:620a:190a:b0:85e:24c3:a607 with SMTP id af79cd13be357-8aa2c658c8dmr184602985a.29.1761782875058;
        Wed, 29 Oct 2025 17:07:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEpq1Z785daIgWtET+m4a3vPVtJCGVXN2ghxTcstoNKd4N7NLjFntKsQd9dRnSm1JqYmFTcFw==
X-Received: by 2002:a05:620a:190a:b0:85e:24c3:a607 with SMTP id af79cd13be357-8aa2c658c8dmr184598385a.29.1761782874559;
        Wed, 29 Oct 2025 17:07:54 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-378ee0d3d6dsm37248641fa.38.2025.10.29.17.07.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 17:07:52 -0700 (PDT)
Date: Thu, 30 Oct 2025 02:07:49 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        chaitanya chundru <quic_krichai@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Jingoo Han <jingoohan1@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, quic_vbadigan@quicnic.com,
        amitk@kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, jorge.ramirez@oss.qualcomm.com,
        linux-arm-kernel@lists.infradead.org,
        Dmitry Baryshkov <lumag@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH v7 0/8] PCI: Enable Power and configure the TC9563 PCIe
 switch
Message-ID: <ocmd7hcplxd66xsy7brg66v5htagv5x34hcmq5seirnjobvkbv@3i6niot5sufo>
References: <20251029-qps615_v4_1-v7-0-68426de5844a@oss.qualcomm.com>
 <20251029232323.GA1602660@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251029232323.GA1602660@bhelgaas>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDE5NSBTYWx0ZWRfX/OofNtmoR20p
 3uF6OSZ6Oa+prDR0adq4ujwPIEppHDydM+Fuz7pmYzGqEWKSbjlrr2PwGEJcrm/Vc4467ojACbr
 LH/ZZpT3uhr4pqbrnoVEbh3MZH4L1igQGJb1l7uqn7v4gJcXQyRfcBSQ4yKq/gWlyFmKedQhWg+
 +okAYi1yuu5w1cZJUs8ogl+bUa2cp1JaDam2MsgGbU2gd8G5KQLPnHiVIqxgtINZhGMYcJpmHXo
 vRIF6UKgJ7xVIcjV6dNKlYLZnGyPT80/i+i9YDB8CdGBkdDhEm6m4THc1Ed6wWLglmDFKDUHWdH
 xn9fi9BeEk0d/pToCWIMjp3kIumoNgl4qmPHD38u4Iu+cGM/g0gjimht4fksTGt7DVzsfwL7xlo
 cb7+Se6yu+LUTke/AymeefjG8tJ6Dg==
X-Proofpoint-GUID: ELXBmrDjrputXTymk8pM7WEcagK9sb5m
X-Authority-Analysis: v=2.4 cv=MuRfKmae c=1 sm=1 tr=0 ts=6902ac5c cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=hGzw-44bAAAA:8 a=YSw-D0X56moLfQO0M-gA:9
 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=HvKuF1_PTVFglORKqfwH:22
X-Proofpoint-ORIG-GUID: ELXBmrDjrputXTymk8pM7WEcagK9sb5m
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-29_08,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 suspectscore=0 spamscore=0
 lowpriorityscore=0 clxscore=1015 bulkscore=0 phishscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510290195

On Wed, Oct 29, 2025 at 06:23:23PM -0500, Bjorn Helgaas wrote:
> On Wed, Oct 29, 2025 at 04:59:53PM +0530, Krishna Chaitanya Chundru wrote:
> > TC9563 is the PCIe switch which has one upstream and three downstream
> > ports. To one of the downstream ports ethernet MAC is connected as endpoint
> > device. Other two downstream ports are supposed to connect to external
> > device. One Host can connect to TC956x by upstream port.
> > 
> > TC9563 switch power is controlled by the GPIO's. After powering on
> > the switch will immediately participate in the link training. if the
> > host is also ready by that time PCIe link will established. 
> > 
> > The TC9563 needs to configured certain parameters like de-emphasis,
> > disable unused port etc before link is established.
> > 
> > As the controller starts link training before the probe of pwrctl driver,
> > the PCIe link may come up as soon as we power on the switch. Due to this
> > configuring the switch itself through i2c will not have any effect as
> > this configuration needs to done before link training. To avoid this
> > introduce two functions in pci_ops to start_link() & stop_link() which
> > will disable the link training if the PCIe link is not up yet.
> > 
> > This series depends on the https://lore.kernel.org/all/20250124101038.3871768-3-krishna.chundru@oss.qualcomm.com/
> 
> What does this series apply to?  It doesn't apply cleanly to v6.18-rc1
> (the normal base for topic branches) or v6.18-rc3 or pci/next.

Juding by the base-commit in the cover letter, it is the following tree:

https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=e53642b87a4f4b03a8d7e5f8507fc3cd0c595ea6

Merge tag 'v6.18-rc3-smb-server-fixes' of git://git.samba.org/ksmbd

Not that I have an idea, _why_ that tree was used, was it really used or
why there are no dependencies mentioned in the footer of the cover
letter.

> 
> I tried first applying the patches from
> https://lore.kernel.org/all/20250124101038.3871768-3-krishna.chundru@oss.qualcomm.com/,
> but those don't apply to -rc1 or -rc3 either.
> 
> Bjorn

-- 
With best wishes
Dmitry

