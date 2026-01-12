Return-Path: <devicetree+bounces-253661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 78CC1D10378
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 01:55:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AE3293002162
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 00:55:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 621C5202F71;
	Mon, 12 Jan 2026 00:55:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OnRECGgB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HC3hYhFk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1C981FECBA
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 00:55:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768179312; cv=none; b=IhViNAzPj75nPrGjQ3S8LMGFoLpvWjMqQxdKclpg/Qw3m/Dv8iwX3wBuJCIEcT8KRi7JOYjF4X0nFlC+2tXwqrwAWcehI8fJ+0r3CzDK1UYksl/xLxoY6KJvPLb0ETPt0+O6XqJ8s7l06W0PUWXnIIVwGB3u27R90ZNNIxaaPUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768179312; c=relaxed/simple;
	bh=9niGhXSzhsCmzIk/XOTdPbk2vN6SXxNzBdX7kPDCQgw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A3VOlZBrWiwD29ssMMPeA1NCtyYdivQa9HvMVUVAYyllN2deyrT6URi8MuwLFYIkc8/3aMAL/FeZEhZ9xfNtWinuzhUw1i6luPPzTgSWkjrV33p8nWfdQ7VJ6a4KNiqo6iDG3dG7SFpfzcWxAfLH3rgsjXV+j8mf/H1MoZDLfWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OnRECGgB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HC3hYhFk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60C00Stl324913
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 00:55:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ZKG2vTZcVze5PMmMWDkNogfd
	MUTb2zc08ff07BmY6No=; b=OnRECGgBzIRB/rFNeFWVYKoWGhrl3eW7LKlHCldv
	Kb3Aci0Np+yqMU6lbxdwa3VuH1jGRo1p0K6RVp5Qpm7MxLZdoaMTDhYjgP+Whs3N
	tju9VfUm2lbGgXbtGt1JM3CZmEupvBMSmJt5d7fHkFwibuJPu0sPPMOrIOPd3WKy
	FAQtp6YjTNfeu95kSJuHjyJmS3MxEFv3nhm8UPNqG+YEW7GyMIdwVNGQew9qbO9s
	nUoFEQ86joc5AzBrcQtpF3V9QpY1wuLKAYxzAllxag2CBeaI/tdK1ULw6LjvjkiQ
	JUaXStoje6TO6Hb1svxlga3D2IXCKnwi5sss2qRhF6tKtQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bm8kys2qd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 00:55:09 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8bb9f029f31so1589708885a.2
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 16:55:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768179309; x=1768784109; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZKG2vTZcVze5PMmMWDkNogfdMUTb2zc08ff07BmY6No=;
        b=HC3hYhFkBb0tB6FFvPGHjVJUmsOtZ5r4idqL9T9kX939KpE9T5m/6/ROp3p+tRoXzt
         q/m3HYneS+QcVG/c0ltEpsS1IB6vIflS6L1gq7Y2mFIeiQb5doI9ItZO33IIDkuB9aHp
         K4BWvOOHayhLwV9PVZprg2awEwj/pl34JJ5f8lbFy36nuB+0IgWy/WNgeWKT7zaqHXaJ
         KVJgjU1IzHKOzw/kAHe0Xy2So9GeiuxDrOWL1kE8GmwRqPmDHbRk0WfT0Ty4a2t1fq6E
         +8PYXB+/uveapNsO6jXiVt/7BAGAg27d8qelajD/pIjCvfF+7hKHqRxjOGeS7KYkur28
         Zc7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768179309; x=1768784109;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZKG2vTZcVze5PMmMWDkNogfdMUTb2zc08ff07BmY6No=;
        b=pGGZFa4h+L1RuY4xl4N2YAHhT1D4BkY0X+zlEy68HaAnAs67GSmpiR2bNAxxCKBQPF
         v1hDEQ7Zk9UY+6rTrlBPSPQJbnve26TUqca/YJDccbHMQrvYQxBFbh3Xn/ZoznA4GWG3
         MTieiMvOR1i/pVgu3BRbqKXwGAi6jNWPU+ghdogEGtmN2fy0HXgNpZ+9VTtVB+9pZeR/
         xPtrGTUhRl7QKxPl6I41ltr6U97HXJWWJySNpYQFc9WHCJFBJE0lcebLWUmE/d3wtqs5
         duBr0PsLC/4+PGhNUizA1cw3juN0yMuUuVgAG/0lvoaGgSVkhdPDMdGVx/abdmX2orng
         2ckg==
X-Forwarded-Encrypted: i=1; AJvYcCUF0V2zz4focquoaNC3hsbzZVDCov402b529+YT4fuE0bOxyzephPh7b7TwQbLDNacsDJfbiCoHe3fg@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9VI8hp09KFaX93vDP60rSsXwITr6EYODyJ2Rr/6T82Tw7ZO2Q
	ycGObusj3Cv7jtdYi+Mgjbnktd2bIGwHJiCuxJ6wsL2BZHu8+OkSME/Ms2KSPg11iq8g0Tf5fwK
	Wo27IkjGc0eY10cCgMrTS6GNmqlf0jM23+0LiDSi0mQnbr36QhCEu+nkud9neNbV+
X-Gm-Gg: AY/fxX5unYCdEzOLGqeffN+18S1bQxKqtEiUQ541C0HyzHYGzEvCRKLCUvehcnaMEnT
	FQ5H5Rq5c3Y9Tpk4vmf2hCnxKPTY9h/OypMGEe6OMLwixzI70Lkz/8k3TB5Ipb7pnki6ymin0LK
	B4RYGCk4E49m76+f6V3Nfu+OfWcaCkqmUIORwQbcZSA10/Jaz8Xbz+xTbTVZOzEE+sN8ASUFwe1
	062AsnhkuYOpZNp3f7LulYVwdxIYLxWPMyC6ZnIM9H0Wjc4EfqLeNONKUO2SBUAz6u7f5qEQf49
	yAn7fY3Hppump0vbOc8AjhXZOD7b/GJIEj6pOhnygnDDfWMviE0RkQSkTVjCI0dYvbiMzeTRsEw
	JHu+eW65Azt0EAQnOCH1XIVaJeIiy0sq5nKV9XAn6KsPsD/nTAftHzLcK/PlIvzRZMDWlBsKvqZ
	EqzQAbH8b2lvwaLL4wkuVnTdo=
X-Received: by 2002:a05:620a:7014:b0:88f:ee0a:3d55 with SMTP id af79cd13be357-8c3893f987amr2245132185a.66.1768179309097;
        Sun, 11 Jan 2026 16:55:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGviYk/tHRgbHMwoju6bimQzSfE7g1q2LlIyy37Rw00yXCPcSjZ7Od6a/4ROk3bJblK4kq69Q==
X-Received: by 2002:a05:620a:7014:b0:88f:ee0a:3d55 with SMTP id af79cd13be357-8c3893f987amr2245129485a.66.1768179308549;
        Sun, 11 Jan 2026 16:55:08 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b6da75ef2sm3771973e87.96.2026.01.11.16.55.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Jan 2026 16:55:07 -0800 (PST)
Date: Mon, 12 Jan 2026 02:55:06 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Val Packett <val@packett.cool>
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/5] arm64: dts: qcom: Add support for ECS LIVA QC710
Message-ID: <3u6q3lyqjto22ln33432vizgj7jzcvroy5rx3dljnglyovqjei@ozfm5qacljwc>
References: <20260111085726.634091-2-val@packett.cool>
 <20260111085726.634091-6-val@packett.cool>
 <wyqml5ywfzwh3uulp4gzlfzx24kb2545w36pkpnz5g27xtnqoi@yywysi37tdor>
 <3dd54179-7a22-4596-a6ef-224530c4b2c6@packett.cool>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3dd54179-7a22-4596-a6ef-224530c4b2c6@packett.cool>
X-Proofpoint-GUID: Xda5LH4Pffh4NwPvEftJ2t5I03xOB_6-
X-Authority-Analysis: v=2.4 cv=ZuDg6t7G c=1 sm=1 tr=0 ts=6964466d cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Og5yudFwtDXh0KMohR8A:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: Xda5LH4Pffh4NwPvEftJ2t5I03xOB_6-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEyMDAwNCBTYWx0ZWRfX3Kmd/S+9K584
 kd4GpGFQLl7VtVRBVgQ276jbOjtCWocTBzdPYlO1hh4ZHzfOQLztu+iP4+mNbRtMqHLxY/tT8n1
 ELkJZZCNUMBUHoqu4ym2jU9seSix6F18Vz86efqnAYzs3HKH8DioReCghE4nDIKiKlRKmzvzhAQ
 d2ZFUdxXJySNLDYl3Ybsc0QPBFg9ZRBQqKFGpIEDzvrhlfc9pTlkAWdEG3O7ts/SkirUtOTEArY
 64nECVelW4ebyylVhlWE0yj3KrOtiBfxGy5rFQElkpJT2oN0tfEMJIxVVZ4ckNU6keGcY96D4Kv
 cdQlygD+3udxuy5fDzlYWaAsrPzZegq8Q50X5djm8Jg/0mBjgdqFmY1rxAAwGSR+eo0p4SQSV0/
 9czGcuwmOfkwkihCZgt5kbTBvpmNSM2LPmxNm4SvqCCW8Ny/FoAqK4UmTn1C6hvUrvKF0AucCc+
 yOsRLKqQ0aNz0zVpEWQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-11_09,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 spamscore=0 clxscore=1015 priorityscore=1501 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601120004

On Sun, Jan 11, 2026 at 09:31:40PM -0300, Val Packett wrote:
> [resent for the lists as plaintext, oops]
> 
> On 1/11/26 1:50 PM, Dmitry Baryshkov wrote:
> 
> > On Sun, Jan 11, 2026 at 05:35:12AM -0300, Val Packett wrote:
> > > Add a device tree for the ECS LIVA QC710 (Snapdragon 7c) mini PC/devkit.
> > > [..]
> > > +&dpu_intf1_out {
> > > +	/delete-property/ remote-endpoint;
> > Why? It should not be necessary.
> 
> It seemed to be implicated in annoying EPROBE_DEFER issues.. But you're
> right, it wasn't this after all.

ok. Which EPROBE_DEFER issues do you observe?

> 
> > > +
> > > +&pm6150_pon {
> > > +	status = "disabled";
> > Do you know, how is Power-On routed?
> I think it's handled by the EC. Keeping this enabled doesn't make power-off
> work, and doesn't make the power button deliver events either.

ok

> > > +};
> > > +
> > > +&pm6150_rtc {
> > > +	status = "okay";
> > No need for qcom,uefi-rtc-info ?
> 
> Ack, will add it, the efivar is present of course.
> 
> Will send it for Aspire1 too..
> 
> > > [..]
> > > +&usb_1_dwc3 {
> > > +	dr_mode = "host";
> > > +	#address-cells = <1>;
> > > +	#size-cells = <0>;
> > > +
> > > +	hub@1 {
> > > +		compatible = "usb5e3,608";
> > > +		reg = <1>;
> > > +		#address-cells = <1>;
> > > +		#size-cells = <0>;
> > > +
> > Are other ports routed somehow?
> 
> Port 001 is routed to the 3.0 Type-A port on the back, Port 002 to the 2.0
> Type-A on the side. Should all of that be modeled?

I think, the comment would be sufficient for now.

> // re: Wi-Fi calibration, submitting that to ath10k now too (though the
> default one worked perfectly fine)

Thanks!

-- 
With best wishes
Dmitry

