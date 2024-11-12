Return-Path: <devicetree+bounces-121020-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E95C9C4EE3
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 07:44:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9079DB20A26
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 06:44:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F82D20A5DC;
	Tue, 12 Nov 2024 06:44:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NSlZdqE7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFCEA208230
	for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 06:44:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731393845; cv=none; b=sBhUr5KnWIeff1Z/udI+UmMPNlnennRZcgZ1CulbThQDV3bVUn07oFWoJuR1/DZnnfudbpdZFM7QHVoMHBLE5QY1yt127bfLk+3LLibpgLb8+HQ9quFs84mGYWAmWZ5dsgnH63joYHkur+tQKF+jJM2Fxhya3yBp8gv2n7KuG7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731393845; c=relaxed/simple;
	bh=FY6WFOJXqCfbzedEEbqnXaBCPjvQ/+RzjiOySYoM/Lk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l1rZm7nWOEueC/hNfiKHM8jFTSJeCSkr9IAmme5AaDHPwfo58DaZVYErY47xyGVljWYhgjLSloqL1YzsEnZoJLiiSkLSgCZJid3zkG2C1seFAlTHLD9q1fAdGlibkCAdfYJ29s0eFnO6bp1hANr8wzPAvoSq4wbdw7XapiT5sFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NSlZdqE7; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-7ede82dbb63so2636922a12.2
        for <devicetree@vger.kernel.org>; Mon, 11 Nov 2024 22:44:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731393843; x=1731998643; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JPlc0iWn23rPv1Yelqqb+UADsrKyk5eLdXjS43qvnhE=;
        b=NSlZdqE7owQlczD41Q00zD6PwMCU+CZ5tWA8IoplXkNgDsmgv3AW7bgXJDhHzPM5iL
         PgcmtnDRzO+ZrC9uR2jV2BdXJ8KfKkFwAbe+LJkQ5XSPOIG+yX4ACoDproJ/wFr9HDr5
         ez0EQDg0Tjr9g4TBL0yonNTBUjTygatx0/aeEWtSVsS8VGXrzJy/53XSwUJ2LQespSy4
         gDyaffp15tE5lgjwbpJIPnUAY/aBRRwI9VduLsCOQMt1vM+/giSWUCn3V2BQzp5b/wRv
         /+0MPIr3yfsvXSEGAFONLMKEPgBS9woB76ZK35rbfvth1z8qYFN65FTH0QmavhYs3Qm2
         Uevg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731393843; x=1731998643;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JPlc0iWn23rPv1Yelqqb+UADsrKyk5eLdXjS43qvnhE=;
        b=xK+pgseS9nkirlNg1Ri7GOZmb2sUSyXProuS6ndJicBOgNQeKQyDMyVmaddxmv6/uA
         yWkQNnFe1Hgp/2Ow4C7D9Xs1Sgxh8ziaszwxc4dZp2Ed/93V3cf1i+6434ksb+iAyp4I
         l78HYCHB0lfHsbr6FLlIP7UqIFKj9w6G7/UiOnjAMuNBRWEYn4PHngS+LHqqYZ0PAv+F
         3k1FSqpkj/vf7INTLRPs3Nfd0vxpzFS6ithPc8Pe0KdbUyOkbVAEuBU/UxQAK8JiY1U5
         AKdk4qR+T8TIo4tPHQfQAerDUj1rGs0ImurrVS+rHk9TrRN1DjU1oPOrV43bg+s+UvRy
         giQQ==
X-Forwarded-Encrypted: i=1; AJvYcCXMS9LxhnJXBnAb1xIs2/ZDY6FxUR0WNufOGkRd44NSCeDjwjLWtZziNMn/xGc2nfrrIFgAAwRIfR5f@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0FHmY4SueiCBc6HsNcHYOm8xSjChsiMJKILBGuNkbFw45Boi3
	Uqe043DYoo8bvWzutJfvZu0aihHeXIAe1UbRiq0mwtTvYlb3PMuGz6KEQgIr9Q==
X-Google-Smtp-Source: AGHT+IFK7EbTW8j6RbaesACTxS+4wyWWBFBogZmLwWGxzhBM+sg2NEDsPKsDx80UIoPC1dThJW6KHg==
X-Received: by 2002:a05:6a20:2d1f:b0:1db:e90a:6b24 with SMTP id adf61e73a8af0-1dc22985104mr21818819637.25.1731393843104;
        Mon, 11 Nov 2024 22:44:03 -0800 (PST)
Received: from thinkpad ([117.213.103.248])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7240799bb78sm10282483b3a.95.2024.11.11.22.43.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Nov 2024 22:44:02 -0800 (PST)
Date: Tue, 12 Nov 2024 12:13:54 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	"James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>,
	linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH v4 7/7] scsi: ufs: rockchip: initial support for UFS
Message-ID: <20241112064354.g634ca5w2gagfyko@thinkpad>
References: <1730705521-23081-1-git-send-email-shawn.lin@rock-chips.com>
 <1730705521-23081-8-git-send-email-shawn.lin@rock-chips.com>
 <20241109121249.vncqbacvpnpf6d34@thinkpad>
 <13ad21bb-9f5a-4a4b-8b65-55243f6fe817@rock-chips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <13ad21bb-9f5a-4a4b-8b65-55243f6fe817@rock-chips.com>

On Mon, Nov 11, 2024 at 09:10:39AM +0800, Shawn Lin wrote:

[...]

> > > +static void ufs_rockchip_remove(struct platform_device *pdev)
> > > +{
> > > +	struct ufs_hba *hba = platform_get_drvdata(pdev);
> > > +	struct ufs_rockchip_host *host = ufshcd_get_variant(hba);
> > > +
> > > +	pm_runtime_forbid(&pdev->dev);
> > > +	pm_runtime_get_noresume(&pdev->dev);
> > 
> > Why do you need these? You are not incrementing the refcount in probe() and
> > there is no auto PM involved.
> 
> Oh, it was a leftover from former version I haven't noticed. Will
> remove.
> 

I've sent a series [1] that addresses the runtime PM issues. Could you please
give it a try and give your tested-by maybe?

- Mani

[1] https://lore.kernel.org/linux-scsi/20241111-ufs_bug_fix-v1-0-45ad8b62f02e@linaro.org/

-- 
மணிவண்ணன் சதாசிவம்

