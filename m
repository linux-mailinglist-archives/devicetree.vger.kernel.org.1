Return-Path: <devicetree+bounces-223658-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 68715BB9621
	for <lists+devicetree@lfdr.de>; Sun, 05 Oct 2025 14:08:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5CC4018954E6
	for <lists+devicetree@lfdr.de>; Sun,  5 Oct 2025 12:09:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24A6B28727E;
	Sun,  5 Oct 2025 12:08:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XXMPeWOx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0DD4269CF1
	for <devicetree@vger.kernel.org>; Sun,  5 Oct 2025 12:08:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759666118; cv=none; b=f2dIGV34iN4y9iDFlb/EWYSlE2Xr6Z7tJ0EM20N2586kMLb5pCx75/S5J7nzURKsH8CIeU/qgrrIQUa9UMgcnvEu4Q9tjZjjve9SXkbDnyqirqAs9WgBAT5KNTj7klBDdmcXPtvvEinmHbn1AJ8dSeQe7OxnbeDUiObhvkkDu2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759666118; c=relaxed/simple;
	bh=wyvLuY5n+tvnuGwyGp7qNTcrqSENQNXuYBiM64dU+qc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pRum+k4wnOIor/yeLG33ofRSehoUEr0UQEPBd23WUQ4J2yKvYD3AQ82adw5SI7FhE6oGLm6NZHisTe9z4/CQX23GzECXcxb9hrNs0zvD1RHukCRyuVMjFXa+IRxipIZyvk9iqYbsLGVHqWPiFdpfxpbaW7790FCpUQaEirmimfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XXMPeWOx; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-279e2554b5fso29511415ad.1
        for <devicetree@vger.kernel.org>; Sun, 05 Oct 2025 05:08:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759666116; x=1760270916; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=n0Iz/V6AwGwcxIZ7A+Dvd5REDaxdSj8jP0Jy7VCRDG8=;
        b=XXMPeWOx5r1MWkUFU5lg07rkebP78zAaM3DeeqAIIiBZviExCCaW5VW8QwuMyvDDin
         6yaSURm/fgJRBR/8xK2p5HR6r4+jbMygMG9qwG9o+lp5RiWOWD+EwTss4d0TO4TevORj
         IfCGNYDlWEw0W8ME65Dw+nndn+HCatvpAj7ad/For2rCriF16yrX0nmbaKAquaSmyQZX
         rFmzpVo5GT/sZgWNCn36tQFEUr8O5nJp5Lk7do/Jdqs/2XvgD26oJlDEFRzTyPlCds/N
         9NK/a7VPCnjbFbhcss9olGo4JA8nJreSeb4u9E+OFdmmBfw8EYScHTWsfwczKiGhdjq9
         xKzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759666116; x=1760270916;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n0Iz/V6AwGwcxIZ7A+Dvd5REDaxdSj8jP0Jy7VCRDG8=;
        b=tLde81Stx5KEYPJNA9zsb/1piFosfxQAFnlKy/4Dp942XQpSOA4ca6v7DbupNSC/4f
         tNXH9k2aqYYbaHfKq2Tww1qhRrLCMNQFEkctGhzt3wrfPR6KTVeDJQv/i6aYTJvqxryN
         BU+ERcauitC2qYsRtCXyelhIHIxSOL2xX5nXfXV409eA1Lh/bVHfuzIIDauqpjQvWAxC
         yP6XJD+D8uhtR86u/YdlVV4uh8jEgSNhK2G6QhtRAjU44DlzhIrVREg3tXj0vrE7eI17
         hnyHMbDcl3jVme336bA2/gDGa+ni8cIagdwZaVL+4toFeVvTZ+FCAbkupVFIQFGjxY/k
         0VPw==
X-Forwarded-Encrypted: i=1; AJvYcCXkiOJ2nD1j3poRYwfS1IUAlOxozmmIPtCnxTh/JxmPw033z86Q+HJEQQZP4MBjL9YuCYACgkGBpd1B@vger.kernel.org
X-Gm-Message-State: AOJu0YwH1fnrpwKPwhGRWos/nuQozdTancSHSJEBnXH9z5o5k4C4Zs34
	N422oFXGxxJoTqnkcUlqr95EYFe4lvJq5f5iK/e5wxn+N1SZc9v7AJJu
X-Gm-Gg: ASbGncuR6kSKbD0K5KZ6jHGDNTVlz7ifP0fUjiomddDGqW6M6BFNMcPKSjKNdZlBCag
	b0TsNXmC3wXC3AthjBpwewE7KXTrwVzmd5s+gbOofSzyMKGiQZjWf263YWKbdfnllkHVM2Qej/N
	2nHDw1xpa20fRZiaqD2g6Bkj3pMI5WQtOyexSKbtrXg8TJu6KJwnVec8SfKSv7zFKRKMdOtH+Xm
	QoA3GaQxUYwfNHSAr41WIlsAube9JbU3BF0FsQRJeWyJizYHij3aBNKWAPhOoj4a6zM2Wsoqn/+
	e2sHUfGNVaYJdt6iTJybNNmFkmeixmSyYdVPLv2nfkr9B1bcDYhzwNGG0TiKqL0EFtcbrpfMJrz
	Irv2Ytib+SJmER9xaMBFjyJ8pjQCKypbqf8vlfpeA5Zii3WO1UR65go4p
X-Google-Smtp-Source: AGHT+IHBt7NH7TN1KsDxkRb650MBtCb+3uYntKRfpifHFzA5B6tzFUrAE5OSO+EE5Xiib+t6EfWyUA==
X-Received: by 2002:a17:903:190:b0:271:9b0e:54ca with SMTP id d9443c01a7336-28e8d04f303mr174512775ad.13.1759666115849;
        Sun, 05 Oct 2025 05:08:35 -0700 (PDT)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with UTF8SMTPSA id d9443c01a7336-28e8d1d564csm101640685ad.98.2025.10.05.05.08.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Oct 2025 05:08:34 -0700 (PDT)
Date: Sun, 5 Oct 2025 20:07:55 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Joshua Milas <josh.milas@gmail.com>, 
	Inochi Amaoto <inochiama@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	unicorn_wang@outlook.com, alexander.sverdlin@gmail.com, rabenda.cn@gmail.com, 
	thomas.bonnefille@bootlin.com, chao.wei@sophgo.com, devicetree@vger.kernel.org, 
	sophgo@lists.linux.dev
Subject: Re: [PATCH 2/2] arm64: dts: sophgo: add initial Milk-V Duo S board
 support
Message-ID: <i5ymzikmayu4hmucm46v2mq2qrgdsmm7f6wsfo3rhj4o7pgdnu@ts7uczeb7qxr>
References: <20250927173619.89768-1-josh.milas@gmail.com>
 <20250927173619.89768-3-josh.milas@gmail.com>
 <nkzpfylhxyqf5u3bjlokhe4udgcxohbaanhwuofjzatan3iwio@45ljfquf5sui>
 <aN8isoQpdENTrxNJ@sleek>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aN8isoQpdENTrxNJ@sleek>

On Thu, Oct 02, 2025 at 09:11:14PM -0400, Joshua Milas wrote:
> Hi Inochi,
> 
> > Small suggestion: please ensure the pinctrl is correct, different
> > board may require different configuration.
> 
> Is there a certain way to do that? I have been checking it against
> the board schematic [1]. It shows that it is using UART0 on the
> pins defined in pinctrl-sg2000.h.
> 
> Link: https://github.com/milkv-duo/duo-files/blob/main/duo-s/hardware/duo_s_SCH_v1.1.pdf
> 
> 

Sorry for missing this. A simple way is to dump the vendor configuration
for an example. It should show almost all you want to know. But if you
want to find the best, it is necessary to check the peripheral manual,
and it will tell the typical configuration.

Regards,
Inochi

