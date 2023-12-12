Return-Path: <devicetree+bounces-24536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D148F80F7A9
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 21:16:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8B990281D8B
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 20:16:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8456863BF3;
	Tue, 12 Dec 2023 20:16:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB69A98;
	Tue, 12 Dec 2023 12:16:34 -0800 (PST)
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rD9B0-0006LK-2c; Tue, 12 Dec 2023 21:16:22 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: hjc@rock-chips.com,
	Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	robh+dt@kernel.org,
	daniel@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	linux-arm-kernel@lists.infradead.org,
	mripard@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v1 1/3] dt-bindings: drm: rockchip: convert inno_hdmi-rockchip.txt to yaml
Date: Tue, 12 Dec 2023 21:16:18 +0100
Message-Id: <170241214695.534713.7214465445904239057.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <49c6afec-022f-02de-99a0-d409b64da198@gmail.com>
References: <49c6afec-022f-02de-99a0-d409b64da198@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Mon, 4 Dec 2023 18:39:03 +0100, Johan Jonker wrote:
> Convert inno_hdmi-rockchip.txt to yaml.
> 
> 

Applied, thanks!

[2/3] ARM: dts: rockchip: rk3036: fix hdmi ports node
      commit: 27ded76ef0fcfcf939914532aae575cf23c221b4
[3/3] ARM: dts: rockchip: rk3036-kylin: add hdmi-connector node
      commit: 569b26af7919c15a8ce231b4fae29cfbd811f144

And changed the connector-type to "a" :-)


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

