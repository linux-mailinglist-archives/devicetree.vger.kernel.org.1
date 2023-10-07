Return-Path: <devicetree+bounces-6649-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3E87BC530
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 08:53:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 12CCD1C2094B
	for <lists+devicetree@lfdr.de>; Sat,  7 Oct 2023 06:53:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05E5E79FB;
	Sat,  7 Oct 2023 06:53:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A7593C0D
	for <devicetree@vger.kernel.org>; Sat,  7 Oct 2023 06:53:33 +0000 (UTC)
Received: from muru.com (muru.com [72.249.23.125])
	by lindbergh.monkeyblade.net (Postfix) with ESMTP id 4E4F0B9;
	Fri,  6 Oct 2023 23:53:32 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by muru.com (Postfix) with ESMTPS id B98F8809E;
	Sat,  7 Oct 2023 06:53:31 +0000 (UTC)
Date: Sat, 7 Oct 2023 09:53:30 +0300
From: Tony Lindgren <tony@atomide.com>
To: Andreas Kemnade <andreas@kemnade.info>
Cc: dmitry.torokhov@gmail.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	lee@kernel.org, bcousson@baylibre.com, mturquette@baylibre.com,
	sboyd@kernel.org, linux-input@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v4 5/5] ARM: dts: omap4-embt2ws: enable 32K clock on WLAN
Message-ID: <20231007065330.GP34982@atomide.com>
References: <20230916100515.1650336-1-andreas@kemnade.info>
 <20230916100515.1650336-6-andreas@kemnade.info>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230916100515.1650336-6-andreas@kemnade.info>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

* Andreas Kemnade <andreas@kemnade.info> [230916 13:05]:
> WLAN did only work if clock was left enabled by the original system,
> so make it fully enable the needed resources itself.

Seems applying this dts change before the clock patch is applied
would break wlan so please let me know when this is safe to apply.

Regards,

Tony

