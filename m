Return-Path: <devicetree+bounces-92213-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C5494C43A
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 20:22:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0E250B22B43
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 18:22:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0D3413BACE;
	Thu,  8 Aug 2024 18:22:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b="TiBQbo6y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63A24148848
	for <devicetree@vger.kernel.org>; Thu,  8 Aug 2024 18:22:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723141335; cv=none; b=TSSf8V7oyyWvNbH8WZRcCVerhhVwafUSKYhdn6Md8D7JUCH8E/09NpkBqZEaVI2LjahAE3DNq1/GEx3XiE6PzhyoNygjmSThMFbc+BD3bYpgLePS9WgdTxHvrhc66qJR4g3MplOxDDaPOTcs5CvPF7OuyDHVDYXGKb2MdCq/Iz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723141335; c=relaxed/simple;
	bh=tx+6GiWd/A/azZwiiPQkz5m4mhMuax7pj7DZDCFXmqk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=R7AxH3ifVLDke/OxITkZEPwfluT6A71b4v6EeTLFr+I6q8q2Dai0kH91paY4x3tXGY2tGwiaIPQj73BG4p41ZJxeHVzaRfO934Z/rrjwWSEk4og0kd88lNUBNSFwacPWut3f52/UF2bdAp6zQuHy2CMyiKSGUQFvyWfkl9aYa/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com; spf=none smtp.mailfrom=pdp7.com; dkim=pass (2048-bit key) header.d=pdp7-com.20230601.gappssmtp.com header.i=@pdp7-com.20230601.gappssmtp.com header.b=TiBQbo6y; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pdp7.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=pdp7.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-1fc611a0f8cso12248475ad.2
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2024 11:22:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pdp7-com.20230601.gappssmtp.com; s=20230601; t=1723141333; x=1723746133; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZSN6cVC7evWmcpEk6TU3DWLWOkdqjYPRuNB/eln0SAw=;
        b=TiBQbo6yNk+fCSjuvr9ZaSyggnKqRekZ2Ci/jHht85AYXK1QMjKa9k3gAVZUMULaGH
         C8v/iHjmXawlb7+BvFVdb2HeGb8tX6zITWrpICl8CX5wwBUQbawDTe4j/opKM0TFy/Ib
         Gg9TR5wkYvLUAVUhkRY1ilpyFFKlkpD1DFFNVn5zRPl2Z44yFrIRn8lkwdboQVRxgF61
         8xju/1kEcuPjtUbpFYrSeXp6Wd2UelHiXF40zAPqSxw+s3s3VUWI4BpNTbGBP4fxPk9E
         BZ1Z/Kd5Zj7qPPQdqAFFeJ2fLS4XfxJom2Uooh7QSo+LmC0Wlu0CbU976il3jjZubn1g
         RRjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723141333; x=1723746133;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZSN6cVC7evWmcpEk6TU3DWLWOkdqjYPRuNB/eln0SAw=;
        b=WgmNpEeXCV2eOewikDTJqhfriCo0RseecEtNwdFwj7n185vleyYbzeTq/mo5XOOiiF
         lxGCLfLCk4J5Odf3RqB7oGfSX+93CHp6EzZObsbnRE0Uu02Rb3+TPrunDLqHUaDEFf5E
         IeuKrcNx9uP/TSAPyw7IfJKWcbMY3M6RrXgP+zLry6X4o6TA8NrKW4UoEnb9vkAxNVrx
         vr/6eo8fu8ddNcByQFhe5QGe8+D9kxTE7cCCvvAH1RIxao9/qyWfpsZTMVNzVrmubQn8
         8qi7xDIjWHvs7Ev4lTc6how0HgyD09UF4zYWpxua6lrDcmo+pqiLuIg2iUYpawrrxT+U
         mPmg==
X-Forwarded-Encrypted: i=1; AJvYcCUqM3uLDTE0aqDaqGsRji7PlVZMs5SaZVoGaLCA38+gMtBmR1VEsG2JbPhzlCaSdC+nTnOuzqBW9x2myOruFV9pVfB+9XTTKi0Iaw==
X-Gm-Message-State: AOJu0Ywfj6yoixiqikRG/FLywWXRznar0QazuyLJActV/NWT5MOYnCwI
	vaCMyWZcj66fx8Y8Ab0Kb752mR7bBZ78iu/hzklUyLghiocmcSqy5QbtwcB5eW0=
X-Google-Smtp-Source: AGHT+IGSExsQlp8XnwcQGGcHAy0C8Cn8njTwT9JbzTIxv6ZA/erMbbJPhhtrGwGHUFr5dn5pGpZekw==
X-Received: by 2002:a17:903:2287:b0:1fd:6677:69b4 with SMTP id d9443c01a7336-200952bf93dmr36841005ad.49.1723141333252;
        Thu, 08 Aug 2024 11:22:13 -0700 (PDT)
Received: from x1 (71-34-86-94.ptld.qwest.net. [71.34.86.94])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1ff5929ad79sm128033615ad.264.2024.08.08.11.22.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Aug 2024 11:22:12 -0700 (PDT)
Date: Thu, 8 Aug 2024 11:22:10 -0700
From: Drew Fustini <drew@pdp7.com>
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>,
	Thomas Bonnefille <thomas.bonnefille@bootlin.com>,
	Kanak Shilledar <kanakshilledar@gmail.com>,
	Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Drew Fustini <dfustini@tenstorrent.com>
Subject: Re: [PATCH 0/6] riscv: dts: thead: Enable TH1520 AP_SUBSYS clock
 controller
Message-ID: <ZrUM0sJQ62XijN7T@x1>
References: <20240801-th1520-clk-dts-v1-0-71077a0614b8@pdp7.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240801-th1520-clk-dts-v1-0-71077a0614b8@pdp7.com>

On Thu, Aug 01, 2024 at 11:38:04AM -0700, Drew Fustini wrote:
> This series contains the dts patches to enable the TH1520 AP_SUBSYS
> clock controller [1] and convert peripherals from fixed clocks to real
> clocks. The dt-bindings and driver patches from a previous series [2]
> have already been merged into v6.11-rc1:
> 
>  ae81b69fd2b1 ("clk: thead: Add support for T-Head TH1520 AP_SUBSYS clocks")
>  1037885b309c ("dt-bindings: clock: Document T-Head TH1520 AP_SUBSYS controller")
>
> [...]

Applied to thead-dt-for-next:

[1/6] riscv: dts: thead: Add TH1520 AP_SUBSYS clock controller
      commit: e919fe036a97f6ed96eecf39ea61963eb2ff3442
[2/6] riscv: dts: thead: change TH1520 uart nodes to use clock controller
      commit: c101b4a028e21ceaa4e39a62ee36a404d7b4bca9
[3/6] riscv: dts: thead: change TH1520 mmc nodes to use clock controller
      commit: 03a20182e1e0f4a824aeef9aa7bd1d46ea6d0196
[4/6] riscv: dts: thead: update TH1520 dma and timer nodes to use clock controller
      commit: 89d58327fd7451533fd313d727b50a8264477bf4
[5/6] riscv: dts: thead: add clock to TH1520 gpio nodes
      commit: 7f5b28218cec55072b562be386675ccae41acca1
[6/6] riscv: dts: thead: change TH1520 SPI node to use clock controller
      commit: 2d98fea7491a00dccd61fee019843b262e60f819

Best regards,
--
Drew Fustini <drew@pdp7.com>

Link: https://github.com/pdp7/linux/commits/thead-dt-for-next/

