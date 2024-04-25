Return-Path: <devicetree+bounces-62730-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 63EE08B24CA
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 17:12:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AA8FAB21F1E
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 15:11:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FE7B14A4C7;
	Thu, 25 Apr 2024 15:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="S8rxhxUb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD9A23BBE6
	for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 15:11:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714057862; cv=none; b=Hd6NmU8vbV6sfh/Wt3lfMPt+ZaQVA4EW7Wi4qMxKx+Q7VKYycPQWIdVLFIUrW+X1mXNsZG0Qin8GzOiBA19pIlVW+eC+DfgMfqGoZy29SkRvAGwPXcvV8f/U/9OT8Auhjst5mtoC8oEnL4A88okjenqWT1jieCoVX34vTnTSNvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714057862; c=relaxed/simple;
	bh=Fk95ireKfpBQ10rrJwz4JEvXmIebseNTHBXugPthMTU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UwNMLHUwSXS4qiQ8fYRD2YJXwtw2DDZCseJGGqlNLXtBrH4YdTUNdNGuF0Hs3pv/yz0tLB4zWjggTro/QA2hcKOTjSmlw7d99aUURRRYxL0ptdOWDtR9tjvLieYKmtOSqBUgj2uFNs8HIjoLTuuIbzs8E9s8hdNfS3qBRORSzvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=S8rxhxUb; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-1e2bbc2048eso9545195ad.3
        for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 08:11:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1714057860; x=1714662660; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AY93I7EEs+BmoPEYFWkauRLMs29koe27zKuQPhldmBo=;
        b=S8rxhxUbJdvAayu3KL/qbN6Q2vu0lmWsfPV2AmfYc10H/mcsYJzakAx8tnasWp1PJb
         NSTwPxGw/HHBOzhiZy+FW7uvlTmpWAF8JbUmPQkPaUjxSlUGB/sed2x5v9IjyM9q3WYh
         CxNQF1aj6xMgKUNbkDAy8HNGwWp9ACvUNph5AbX6Q4qo5om96x1AqLm9W9AnyQQvj5bO
         oCRXYHAAfb1ZiH+pY+/fv9T5Gk4kxFJY5opQSkwyBx5chtqSpYWNxjFRWLYU8ny853h7
         otwPcwuJ4lFX8wqrwcdhBzI+aWdEGHScQCju/Yn+Wrk7yGvxs3r2pAviitQpxeKK4WxC
         mqdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714057860; x=1714662660;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AY93I7EEs+BmoPEYFWkauRLMs29koe27zKuQPhldmBo=;
        b=JMclSz8w8r5jX4PktUGXpSTwKmzHU9sNRtm2Vv4CHz+fjmH2J5kMP9C1DUXv0SL6nl
         rsiyKl5QGtaMXOIp3SOepCaof6YoMeuXPYKgf5M5nMV5FC2h5zj0oKuZuFNYM2xvf/dd
         cYTamMDBXLbJ1p4qjCcOVMnsJmRhPgiwZJk4l5vC5erIAehP3Adussv3AogFQzet42iR
         9aNtJB6SBJ49qZvnOj43tFBfDf4jE6RRiUuCWNwlCRQjPTfviq7mUKfg2e/zACA/qKEB
         wgPKJfjKX9aW+WcBCjo8uEGY1/pTaBXfvw1/BsFXrqwsijCvpsaA5hX2TgDYtYwPPhH0
         lXDw==
X-Forwarded-Encrypted: i=1; AJvYcCXYdZzKsEja2hwWQMOcACEUWUhlpWvoWwB2+ckQGFQhdt8XpqJza0JfIqXAFowbQBsADRVkOQY5WT8ao/SlXSz3QtNgOfsE9ylH9g==
X-Gm-Message-State: AOJu0YwfdYuXAaF0raXzzU8ShATntdU13anjOFzKA2Rs44u8LDEoYmvL
	AbElC2GvOR9tJ466hoXARhPZOPB7J7l3Zn1ObqEsZ8Vx6cnGKs5LNzYgEdtlg1Y=
X-Google-Smtp-Source: AGHT+IHvY7DZYX+EkssFptxYTzjgaUmPIJ9qGQ0l15Q85PHvyKcG5KvOmHeKEH1EXyvOyznu1y2e4A==
X-Received: by 2002:a17:902:f60c:b0:1ea:5ac0:ce46 with SMTP id n12-20020a170902f60c00b001ea5ac0ce46mr7023197plg.66.1714057860114;
        Thu, 25 Apr 2024 08:11:00 -0700 (PDT)
Received: from x1 ([2601:1c2:1802:170:d29d:de91:a86d:7ccd])
        by smtp.gmail.com with ESMTPSA id e6-20020a170902784600b001e2a3014541sm14130260pln.190.2024.04.25.08.10.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Apr 2024 08:10:59 -0700 (PDT)
Date: Thu, 25 Apr 2024 08:10:57 -0700
From: Drew Fustini <drew@pdp7.com>
To: Conor Dooley <conor.dooley@microchip.com>
Cc: Thomas Bonnefille <thomas.bonnefille@bootlin.com>, jszhang@kernel.org,
	guoren@kernel.org, wefu@redhat.com, andi.shyti@kernel.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	miquel.raynal@bootlin.com, thomas.petazzoni@bootlin.com,
	linux-riscv@lists.infradead.org, linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org, paul.walmsley@sifive.com,
	palmer@dabbelt.com, aou@eecs.berkeley.edu,
	Emil Renner Berthing <emil.renner.berthing@canonical.com>,
	Drew Fustini <dfustini@tenstorrent.com>
Subject: Re: [PATCH 0/4] Add I2C support on TH1520
Message-ID: <ZipygSDkbuFWq6q2@x1>
References: <20240425082138.374445-1-thomas.bonnefille@bootlin.com>
 <20240425-boxcar-maroon-f07c5aba9272@wendy>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240425-boxcar-maroon-f07c5aba9272@wendy>

On Thu, Apr 25, 2024 at 10:00:10AM +0100, Conor Dooley wrote:
> On Thu, Apr 25, 2024 at 10:21:31AM +0200, Thomas Bonnefille wrote:
> > This adds I2C support in the device tree of the T-Head TH1520 RISCV-SoC
> > and a default configuration for the BeagleV-Ahead. It appears that the
> > TH1520 I2C is already supported in the upstream kernel through the
> > Synopsis Designware I2C adapter driver.
> 
> > As there is no clock driver for this board as of today, this patch
> > series uses a fixed-clock named i2c_ic_clk.
> > There is also no pinctrl driver yet so pinmux must be handled manually
> > for now.
> 
> https://lore.kernel.org/linux-riscv/20240103132852.298964-1-emil.renner.berthing@canonical.com/
> https://lore.kernel.org/linux-riscv/20240110-clk-th1520-v1-0-8b0682567984@tenstorrent.com/
> 
> These seem to be the most recent versions of each. I guess they're both
> just waiting for their authors to have the time to get another version
> written.

Thanks for the impetus. I've been meaning to post but it keeps getting
pushed down the stack.

I'll post an updated clk series today. I do now have the emmc working
with a real clock property.

thanks,
drew


