Return-Path: <devicetree+bounces-12034-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AD52D7D79CA
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 02:49:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 15068B20FE8
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 00:49:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4173917CD;
	Thu, 26 Oct 2023 00:49:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XaUAU511"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE27D17CB
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 00:49:35 +0000 (UTC)
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com [IPv6:2607:f8b0:4864:20::1134])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BAC6B133;
	Wed, 25 Oct 2023 17:49:32 -0700 (PDT)
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-5ac376d311aso2553537b3.1;
        Wed, 25 Oct 2023 17:49:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698281372; x=1698886172; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xqdAXHSGF5VNXAbVriwUjBhLzThGkeSMh88vleW8D9c=;
        b=XaUAU511/rtotE1B1GqDDtD+5OYzP1xRUbPL+kYwUB7utzLqSPBgdZP2wk1KQXSvEV
         5+KIdpb4cGG7Xj7gmjWcV0TKP+QlGlunK4rsWV9UCP0G2rFO1DFuFIlU/VSItywLPogH
         4nFv0/joIQOPGFbE52e3sEhu1+oIXv6pX4fttNR1tc4DjWpXQL5M8gj2TpN4CaUNL1Fw
         +OrgRmwtkGcCSE8saQAtI5MtplQ+HcDGGwtMmedFxNKOvwagsiLvzLibBfcv7zclWf2J
         ogJt+/KNPKWTpu57iMIbI8lITmsB83gM7n8SWrLHAdqB1FsiWjoeRa19m0eqktC4DxI7
         Mqbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698281372; x=1698886172;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xqdAXHSGF5VNXAbVriwUjBhLzThGkeSMh88vleW8D9c=;
        b=fhmc4QIxO/79PWtT9/ZawdY7cJAno80OYa+V+D2JKuK45jH3/Q2YQFaIh8zL5iHqWj
         NQg5J9hM3SxI0PYyPA8PMMFELX0zzaSHW7pxVdL5Iz1eRDZmp6q7n66/Nt1O6UMmEvcu
         AydpcX+fcYcdQ14p+nV082RscD4ozoc/Yd5N8NNl4+a+nMvZXHPyXvzNqKhrWWVmE4Z/
         9X3mR/FRP48YgQLKDdQZkgNrc6WzauawEwmcKEn6Y3MiP4ioDYx7XPCtT+C+7SYUH9kH
         vj/OWa3krBR8i5JN5mTwthFR/xb7k1Nzo+PYfvhqVAWg7sPDxjxzzX6VKax6Wfjj89ZZ
         EKdg==
X-Gm-Message-State: AOJu0Yy/T+0XHcHFqh8Y0V2V30oPI//uhsFBjsxCTSbXLf4hGfwyUBek
	UYAtPFuwM4BuAhuIFEGcLVn+qLvu1fQ=
X-Google-Smtp-Source: AGHT+IEZG4qqdvE8KrwcAkmpuurd/lwqfr39gc/UWIzBXB7no1mHwRn/8Deze/4s89oxry/iTtfm/g==
X-Received: by 2002:a0d:d901:0:b0:583:d8d4:7dfe with SMTP id b1-20020a0dd901000000b00583d8d47dfemr15491489ywe.31.1698281371879;
        Wed, 25 Oct 2023 17:49:31 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id o188-20020a8173c5000000b005a7dd6b7eefsm5502897ywc.66.2023.10.25.17.49.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 17:49:31 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Wed, 25 Oct 2023 17:49:30 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Saravanan Sekar <saravanan@linumiz.com>
Cc: sravanhome@gmail.com, lgirdwood@gmail.com, broonie@kernel.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, jdelvare@suse.com,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-hwmon@vger.kernel.org
Subject: Re: [PATCH v4 1/4] hwmon: (pmbus/mpq7932) Get page count based on
 chip info
Message-ID: <17538c4a-a9cf-4632-91f0-307907fc1596@roeck-us.net>
References: <20231011164754.449399-1-saravanan@linumiz.com>
 <20231011164754.449399-2-saravanan@linumiz.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231011164754.449399-2-saravanan@linumiz.com>

On Wed, Oct 11, 2023 at 10:17:51PM +0530, Saravanan Sekar wrote:
> Get page count using compatible match to support the series of chipsets
> which differs in number of regualator/page.
> 
> Signed-off-by: Saravanan Sekar <saravanan@linumiz.com>

Applied.

Thanks,
Guenter

