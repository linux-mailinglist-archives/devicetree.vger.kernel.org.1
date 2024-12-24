Return-Path: <devicetree+bounces-133875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AA43E9FC1AD
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 20:33:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 26521165B0A
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 19:33:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E57D212D62;
	Tue, 24 Dec 2024 19:33:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="H51ckFsv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64B7817C208
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 19:33:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735068822; cv=none; b=hvcoHd7KpCqXZ3T67Nq7uq4Jdim8rvL8I1k0FWQ0Muw/Ww3+B7Pc7zTGmQ/0fG2OYx+dhOQ0+OmPz5Si/JvcfHGIr4ZB8efrzfmkxHo8OT30+cdQF1czOS/P9UuxEOz1G+L9O8W72S/ebGsO0hFa10AGsdYnLRhUO6txtTybqgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735068822; c=relaxed/simple;
	bh=dSFj0sRDXNjhaoYnQOd39RTHR4MuQ7/g8Cwqoz6gE+M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CRyfFA4eIps17PCk6XpiHeQHOyCE8oCn0xE1SIf+NirXHdRMLhFGBijZol+v8mE1FA8XyROd4bmwU33scsvfZ+Mch0DEw4lw72idtNDTHFirKGpCpdaN5JlJ9ALJZAZRDRYppJRmgY6Bnof6RVSF8wInUtsTF+h+pSse1ZxlgcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=H51ckFsv; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-30037784fceso55762781fa.2
        for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 11:33:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735068818; x=1735673618; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hj5ZQYj6ZfvnBNr/ZwjvBlcO0X3/akFeihZJe9d7b8A=;
        b=H51ckFsvpTIAC21y2N5D7MaMnMXM/lXaAFqCSic4xIBoIRxSg6eBGoEXaswtwAOd20
         gvcbNEU6vFrzYPnLmvZjB0N0FKTn5Svmud10LLE4pZLo+QEYhcXrkio5OHtMwUMxh/BV
         OO0YLL67xCgLcaT/7tArjTilOHdQlU2uQU+hJhU7NhNw3xIqgOUmLNmih3z+UZd9qZmC
         g54NgRyZDmcNJMoxb0HKV4ep4D7OA1vO50zTyiyje+rlvSAAYij4SiHbj+Cqs9Sh63fw
         Ud49om30o1MmUaj7b9LmJBlghkA3iUkbMudLdiqYU2wdCzIahTEmkctREVL6e/QQ2xu/
         C38Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735068818; x=1735673618;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hj5ZQYj6ZfvnBNr/ZwjvBlcO0X3/akFeihZJe9d7b8A=;
        b=gnEz7zPNJaznvVLE++j0wY1CWV7CmlUmP+84nsD/7mH7QLQsGF9Nfv56EIlhNZjkcf
         DIFf3TUIEb6aWFFf1/x4+5uYpKquMYtVPOayYjVHWojzYOCS0cwHe/D3Z1w0WpcFP0ux
         T62OmTbOc+eTIQQZI3zaPFjIno7SFiSdJBwlTLUSbpOP5G40lWcE7VhFfulr741ybq9S
         xvmAyTHXU+5QtxtuR+V65NcqmX4rlkHPvpbdEY90l+SQvIAK44PepMoMkwRon2b9pjc7
         qCIyU6e7NU/NQQBVbGwcFzXkRAM0eWi1VLEezeVvxD1NfyJy99+H3che2RUiStFMCQdM
         nFiQ==
X-Forwarded-Encrypted: i=1; AJvYcCU2q0ZH5Wm78rvYkVwpnEBiQ3/cF1tJnfrLyx0kHZNL4ObVxyJ36QVkEssHKOZJhCJUFDftSZ+2r6EQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6Gcnosm7cNtyYlcQ1FQtyDNdGjYOR25uGAS6jpAwB4gCM8alV
	Z56DuRhbLxiftFS2TkQKPLsCizdiK+z6Qlc6ROMr0XuKcp1PHZgomFbclSdJ2YavaIUCN19+iF/
	W
X-Gm-Gg: ASbGncsnRss3/w2reuKrQUOrDm3w1QjFQiCXVGk8KBABQS1MlaBzcTbBg93V0/Calbq
	C2PwiabIsxAbrIugWjRAzUyu9zvPXtkVVK8H99DWa22zdhHe9FQxHN9qw8P99GYS3ivTGjF3v1b
	dbYgGFReUxxfCgtfjt3NqCR/XSEVPtMm5WJZYAxYlGqosV2SDSdTBFpTWWcEiTsOdCBnRcl26Zv
	2G2KeIx+yf0+cQyCGK+N8I4CIi9XvxyALD02u6De7hJRpeQ3QdoGQNSFK0nUB7HZqlzWdHnWT7O
	W30zd8sc3DTfkOyrYj8CoPk4B6ZTiavpbxV2
X-Google-Smtp-Source: AGHT+IEkb0VKMilQU2dWu2ZBHliquu6RNqgoSY7VWxk9u+ibKV61fNt7hOqrfr2SiK3VLvGe0YstxA==
X-Received: by 2002:a05:651c:781:b0:300:3307:389d with SMTP id 38308e7fff4ca-3046858d397mr47101911fa.19.1735068818550;
        Tue, 24 Dec 2024 11:33:38 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045adad4a8sm17662401fa.68.2024.12.24.11.33.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Dec 2024 11:33:38 -0800 (PST)
Date: Tue, 24 Dec 2024 21:33:36 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Johan Hovold <johan+linaro@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Varadarajan Narayanan <quic_varada@quicinc.com>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org, quic_ppratap@quicinc.com, 
	quic_jackp@quicinc.com
Subject: Re: (subset) [PATCH v3 0/3] Add support for USB controllers on QCS615
Message-ID: <i7gptvn2fitpqypycjhsyjnp63s2w5omx4jtpubylfc3hx3m5l@jbuin5uvxuoc>
References: <20241224084621.4139021-1-krishna.kurapati@oss.qualcomm.com>
 <173505391861.950293.11120368190852109172.b4-ty@kernel.org>
 <anfqf3jvh7timbvbfqfidylb4iro47cdinbb2y64fdalbiszum@2s3n7axnxixb>
 <Z2sJK9g7hiHnPwYA@vaman>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z2sJK9g7hiHnPwYA@vaman>

On Wed, Dec 25, 2024 at 12:49:07AM +0530, Vinod Koul wrote:
> On 24-12-24, 17:38, Dmitry Baryshkov wrote:
> > On Tue, Dec 24, 2024 at 08:55:18PM +0530, Vinod Koul wrote:
> > > 
> > > On Tue, 24 Dec 2024 14:16:18 +0530, Krishna Kurapati wrote:
> > > > This series aims at enabling USB on QCS615 which has 2 USB controllers.
> > > > The primary controller is SuperSpeed capable and secondary one is
> > > > High Speed only capable. The High Speed Phy is a QUSB2 phy and the
> > > > SuperSpeed Phy is a QMP Uni Phy which supports non-concurrent DP.
> > > > 
> > > > Link to v1:
> > > > https://lore.kernel.org/all/20241014084432.3310114-1-quic_kriskura@quicinc.com/
> > > > 
> > > > [...]
> > > 
> > > Applied, thanks!
> > > 
> > > [2/3] phy: qcom-qusb2: Add support for QCS615
> > >       commit: 8adbf20e05025f588d68fb5b0fbbdab4e9a6f97e
> > 
> > Is there any issue with the two remaining patches?
> 
> Something wrong with b4... I have applied 2 & 3
> Patch 1 should go thru USB tree

Hmm, strange. But then, please excuse my ignorance, do we have bindings
for these two patches?

-- 
With best wishes
Dmitry

