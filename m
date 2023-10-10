Return-Path: <devicetree+bounces-7344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E0E77C0207
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 18:54:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AEE16281A07
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 16:54:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBB682FE2E;
	Tue, 10 Oct 2023 16:54:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5F4915AD2
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 16:54:30 +0000 (UTC)
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73EC28E;
	Tue, 10 Oct 2023 09:54:25 -0700 (PDT)
Received: from i53875b94.versanet.de ([83.135.91.148] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qqFzp-0006F2-Mf; Tue, 10 Oct 2023 18:54:13 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: quentin.schulz@theobroma-systems.com
Cc: Heiko Stuebner <heiko@sntech.de>,
	thierry.reding@gmail.com,
	airlied@linux.ie,
	sam@ravnborg.org,
	robh+dt@kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Quentin Schulz <foss+kernel@0leil.net>,
	daniel@ffwll.ch
Subject: Re: [PATCH 1/3] drm/panel: ltk050h3146w: add mipi_dsi_device.mode_flags to of_match_data
Date: Tue, 10 Oct 2023 18:54:11 +0200
Message-Id: <169695678310.350877.5388571923561270631.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20220131164723.714836-1-quentin.schulz@theobroma-systems.com>
References: <20220131164723.714836-1-quentin.schulz@theobroma-systems.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_PASS,T_SPF_HELO_TEMPERROR autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, 31 Jan 2022 17:47:21 +0100, quentin.schulz@theobroma-systems.com wrote:
> From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> 
> To prepare for a new display to be supported by this driver which has a
> slightly different set of DSI mode related flags, let's move the
> currently hardcoded mode flags to the .data field of of_device_id
> structure.
> 
> [...]

Applied, thanks!

[1/3] drm/panel: ltk050h3146w: add mipi_dsi_device.mode_flags to of_match_data
      commit: 99403d747ae8c7b3bfb5cd14c8908930ec6801c6
[2/3] drm/panel: ltk050h3146w: add support for Leadtek LTK050H3148W-CTA6 variant
      commit: e5f9d543419c78ac58f3b3557bc5a76b20ff600b
[3/3] dt-bindings: ltk050h3146w: add compatible for LTK050H3148W-CTA6 variant
      commit: 29d8e38c36cb662331a833699c359ec1af1edbec

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

