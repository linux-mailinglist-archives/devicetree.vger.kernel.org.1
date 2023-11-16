Return-Path: <devicetree+bounces-16110-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 592D17ED8A1
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 01:38:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CEF42B20B7B
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 00:38:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DDEE1384;
	Thu, 16 Nov 2023 00:38:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A7A392
	for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 00:38:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 802AEC433CA;
	Thu, 16 Nov 2023 00:38:45 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id 10FCB1062B58; Thu, 16 Nov 2023 01:38:42 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Elliot Berman <quic_eberman@quicinc.com>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20231031-ref-reboot-mode-v1-1-18dde4faf7e8@quicinc.com>
References: <20231031-ref-reboot-mode-v1-1-18dde4faf7e8@quicinc.com>
Subject: Re: [PATCH] dt-bindings: power: reset: $ref reboot-mode in
 syscon-reboot-mode
Message-Id: <170009512205.785165.1071584386699473443.b4-ty@collabora.com>
Date: Thu, 16 Nov 2023 01:38:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3


On Tue, 31 Oct 2023 11:27:00 -0700, Elliot Berman wrote:
> syscon-reboot-mode.yaml should $ref: reboot-mode.yaml, but instead
> rewrites the properties. Update so it $refs instead.
> 
> 

Applied, thanks!

[1/1] dt-bindings: power: reset: $ref reboot-mode in syscon-reboot-mode
      commit: 160dff476f81b928ee4a4d2be95066fa32513483

Best regards,
-- 
Sebastian Reichel <sebastian.reichel@collabora.com>


