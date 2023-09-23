Return-Path: <devicetree+bounces-2751-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A3FD57AC53B
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 23:45:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 469F0281600
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 21:45:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DAABC8F5;
	Sat, 23 Sep 2023 21:45:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EFF6C8C4
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 21:45:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1EF6DC433C8;
	Sat, 23 Sep 2023 21:45:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695505545;
	bh=fS4DH7h2XPXh7V4XUcE3VlGOmmyl+giuc/McST8xN70=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=JIpYfalFeiVszYfw5kNLb41uMt+H7QBVrBkJrb6PelynhbpgrFRQYz1WB5ctlyKN5
	 iE36M6TDf1fGKR5cxIaSwfHEvpM7sNG8N297H6cVjXbjfg9bfs1gMNBF8BPwC/OBds
	 FuP22HNG1Y6n/yVfeT01x415DHxQGoB3u4msYyyU54J0Yvsn3DWW4qG8ujunjLgusM
	 TiTTkZ3Oaml6xeau+VeiKYKJP3pomc4ZIzg+ZKFwqf56Rfal4QVmF1gq6fkoyREh+x
	 SA23nSICZyKMhzKupqL/N9KE1k8iXVDkBAVxlgeHcNPoXAT8VGJnnJgk8moNPT59Iv
	 KFSZ20ClFyeNQ==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Luca Weiss <luca.weiss@fairphone.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: qcom: sdx65-mtp: Specify PM7250B SID to use
Date: Sat, 23 Sep 2023 14:49:48 -0700
Message-ID: <169550521468.6100.14904156607688324657.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230921-pm7250b-sid-fixup-v1-1-231c1a65471f@fairphone.com>
References: <20230921-pm7250b-sid-fixup-v1-1-231c1a65471f@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 21 Sep 2023 08:34:02 +0200, Luca Weiss wrote:
> Now that the pm7250b.dtsi can be configured to be on a different SID, we
> also need to specify it for this dts file. Set it to the SID 2/3 like it
> was before commit 8e2d56f64572 ("arm64: dts: qcom: pm7250b: make SID
> configurable").
> 
> 

Applied, thanks!

[1/1] ARM: dts: qcom: sdx65-mtp: Specify PM7250B SID to use
      commit: 4d8b5d7171722d2cdccc880d8e449f7ca9c7b6bf

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

