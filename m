Return-Path: <devicetree+bounces-7276-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F160B7BFDF1
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 15:40:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AA32F2827AA
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 13:40:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22AB11DFDC;
	Tue, 10 Oct 2023 13:40:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C99291DFDA
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 13:40:15 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12FF610E7
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 06:39:49 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qqCxU-0007N7-9E; Tue, 10 Oct 2023 15:39:36 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qqCxT-000g0g-CR; Tue, 10 Oct 2023 15:39:35 +0200
Received: from ore by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qqCxT-00Dk78-9t; Tue, 10 Oct 2023 15:39:35 +0200
Date: Tue, 10 Oct 2023 15:39:35 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Mark Brown <broonie@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, kernel@pengutronix.de,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v1 3/3] regulator: fixed: forward under-voltage events
Message-ID: <20231010133935.GB3268051@pengutronix.de>
References: <20231010085906.3440452-1-o.rempel@pengutronix.de>
 <20231010085906.3440452-3-o.rempel@pengutronix.de>
 <5e51792a-cc93-4364-a51b-c2b116d89369@sirena.org.uk>
 <20231010125531.GA3268051@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231010125531.GA3268051@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Oct 10, 2023 at 02:55:31PM +0200, Oleksij Rempel wrote:
> Hi,
> 
> On Tue, Oct 10, 2023 at 01:19:36PM +0100, Mark Brown wrote:
> > On Tue, Oct 10, 2023 at 10:59:06AM +0200, Oleksij Rempel wrote:
> > > Add handler to forward under-voltage events.
> > > On systems for more or less complicated regulator chains we need to
> > > forward under-voltage events to actual driver which need to react on
> > > them.
> > 
> > It isn't clear to me why this would be implemented in one specific
> > driver, nor why this would be done unconditionally.  Could you provide
> > some information on the problem you're trying to solve here?
> 
> The hardware I am working with has an under-voltage sensor on the 24V
> supply regulator and some backup capacitors to run SoC for 100ms. I want
> to forward under-voltage events across a chain of different regulators
> to a designated consumer. For instance, to the mmc driver, enabling it
> to initiate shutdown before power loss occurs.  Additionally, a bit can
> be set in the volatile memory of a scratch pad in an RTC clock to record
> sudden power loss, which can be checked on the next system start.

The bit picture of my HW may potentially be even more advanced:
- some regulator chain paths are disabled by the HW. With other words
  under-voltage event is converted to fail or disable. There is nothing
  what software can do, but it will be good to reflect it on the SW
  side for diagnostic.
- some paths can be disabled by software to get some more milliseconds
  of life and complete emergency shutdown task.


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

