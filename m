Return-Path: <devicetree+bounces-121172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E329C5B1A
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 15:59:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1209E280EA7
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 14:59:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8363E1FF5EB;
	Tue, 12 Nov 2024 14:55:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="G3R61XRm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B18A61FF034
	for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 14:55:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731423316; cv=none; b=VYCVZKssASpDQ1I6QElB85Vf9z1dah9O4LtVqbsE/o5Q0H7t8vXiV58n6Hv0BXHfFrIu60haPNmGKqdWeH0b5npy12gMkI+cJ0YNRF101fwhOCD6GuB1G9dkq3zJOSCN60PIYlEgC7MYjOIKhxuRL3fav0Gw1gBUOhmlKfvUIv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731423316; c=relaxed/simple;
	bh=7CgPmKR+pBqeOwpF5GsLSoRZ2dGeu8Y6nrW55fGI7Yw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZcPAaFBAFNlDFp7158zPCiQg6EiQHECfRoHpuilhCLGWSRInZ/Ak8RNFlGlv07MMrOsHaYzte6fCdu2cXkaaWQw020yaUSvEyV6xATifnZjzI0/oUl6hqf8gyLPZePeR3rGzOfEMhqfNqFHhJCsoJyK3cltq3imbSh0PsDxYw1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=G3R61XRm; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5cb6ca2a776so8782088a12.0
        for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 06:55:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731423313; x=1732028113; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=p7+ge7hJafVQtjpuuqP/E88xzOJBZSOXD8WkyCEkOXo=;
        b=G3R61XRm5rYDD8As+RXwXivYnECFbBHJ+2lYJVBGqOMhLxGt1cwZ7wGknG0s43bZdB
         SqOoJ0DFq1bqKUgQAveJJv57aLUDhOUnM7+NRuzwKBUmDFxABOZWh9RHA5uByfF/2NNk
         CjYRea4wCOmJAtcUSlDwZWNV2rVjEdG6iRMslqrNLBRd7i3lxedJQjbN9hJ+QNGMxU9B
         RdNy0mUyLHfqfgfpPA9DI4tLziB7zSTzsOof4Oh+l02QDACGs//4O5BwyAifAVNZR42F
         cjoriRjH2i2l9bhAF4YSRpRxzmbyr6JPcviGXS7h3HeXj2UGnf5dlx8TvG+OvA/k83wZ
         U89g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731423313; x=1732028113;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p7+ge7hJafVQtjpuuqP/E88xzOJBZSOXD8WkyCEkOXo=;
        b=k3AvqYY/PxL1Yr14P/2ArJMLxtNKn36jKtS8MUXYpYWOY1dWoaM/zrm4EpHeL5+Dt3
         FsRb5isy/HfR3KZvg1J/UgYYdWI4MOJuZkpxiPyhwAfCBPIkvg9NzymIoGvGVt01oJYE
         A/HwdhNK/Ws8tZtDdiBMrL+IhbJSBbo3iVUsAf2XSjlCFdEb7Xgic2vanm3vhcBATmyj
         6R5gdmtHDiE/sWxao/p1u7a1O5IlBHd10CNrccthulFC+OHkJbH7W+BOte5V7OfTSpd0
         QNYE7FOmUHqN9e6dpWYz6WZmSAbBJPenhBl3kt9/fZHqgFHJE2bWz70e7prD5lKXBfbo
         raEQ==
X-Forwarded-Encrypted: i=1; AJvYcCWmR8e8XG1R/hJiW09V1j2zPaMLHn87dJW2SKfA5j0Qaaf0lijaOAnvTbaPk/yST7mGPv0kkBmAc/oF@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/HAkB0j3T6/6no5z3OHCm3B+lyJuN3f8VjXTy0cclMcNrEm1z
	sUji8ZIMCWBGJdlvkE69q0ulE3p5XFyth82YFKXvSpgn0OXFkiTs59CaBOU+QujXRsB0Lj8kegX
	/XwqHkq303vpicqtBu6alCkkgEJ1zemmXbQVCLA==
X-Google-Smtp-Source: AGHT+IG5vgBt7SWz10m4bwHWl3WshDBGFWCRIXZLwIVJzAVLym8qK1LYVQnvPnJBn5988rv5zM1s0M0FA1lslSV8RBI=
X-Received: by 2002:a05:6402:34cb:b0:5cf:a20:527b with SMTP id
 4fb4d7f45d1cf-5cf4f3c018emr2916662a12.28.1731423313055; Tue, 12 Nov 2024
 06:55:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <1731048987-229149-1-git-send-email-shawn.lin@rock-chips.com> <1731048987-229149-7-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1731048987-229149-7-git-send-email-shawn.lin@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 12 Nov 2024 15:54:36 +0100
Message-ID: <CAPDyKFray463L3NcG3QF6Qi7q0cz15Z7sO0gEH1OgB7EK5GcmQ@mail.gmail.com>
Subject: Re: [PATCH v5 6/7] scsi: ufs: rockchip: initial support for UFS
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	"James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>, 
	"Martin K . Petersen" <martin.petersen@oracle.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	"Rafael J . Wysocki" <rafael@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
	YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>, linux-scsi@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

[...]

> +
> +#ifdef CONFIG_PM_SLEEP
> +static int ufs_rockchip_system_suspend(struct device *dev)
> +{
> +       struct ufs_hba *hba = dev_get_drvdata(dev);
> +       struct ufs_rockchip_host *host = ufshcd_get_variant(hba);
> +       int err;
> +
> +       if (hba->spm_lvl < UFS_PM_LVL_5)
> +               device_set_awake_path(dev);
> +
> +       err = ufshcd_system_suspend(dev);
> +       if (err) {
> +               dev_err(hba->dev, "system susped failed %d\n", err);
> +               return err;
> +       }
> +
> +       clk_disable_unprepare(host->ref_out_clk);

I am not sure that the host is always runtime resumed at this point,
or is there? If not, we need to call pm_runtime_get_sync() somewhere
here and a corresponding pm_runtime_put* in the ->suspend() callback.

Of course, if you could make use of pm_runtime_force_suspend|resume()
that would be even better, but then probably need some additional
re-work in the ufs-core layer first, to make this work, I think.

[...]

Kind regards
Uffe

