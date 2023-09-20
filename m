Return-Path: <devicetree+bounces-1586-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EEAC7A7142
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 05:55:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 28D5C2815D6
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 03:55:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A84E4258B;
	Wed, 20 Sep 2023 03:54:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97D6723A8
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 03:54:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76EA9C433C7;
	Wed, 20 Sep 2023 03:54:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695182098;
	bh=Zp4mN7NTiwPryycNsAtJzWVJqvydvecVdj4/IOxVxTc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=eh5JOuoLxpDRJL59oyIaJ6JiynCvflICUodvvWhJ+YSnsoaZLWCJVq72zP7rmfyyp
	 pCu/EIfA8WX7XZMxxDtSPc35lwsQYkZe572V+cjpZsXBXo00LflMdgU/oj7HwKYRJU
	 Vxdp3/+v3ZmupZ7/xiuyH0F4+6ja8QNWmZXx6mEpq82lWphAoaQUAVco8R6/qc59am
	 sQD1VJ6IAUFKHKmaDlJud0V2bxMQv4xhC0GkjuSFsLDNeIWpSNvO+VtIOnOja4xHBk
	 byD4inO5SPn/d4IC8Z+CdbA8kQVUzM73qKCjEHzw9wSnJJxPXZLyRhchz67G0OroDu
	 3pq8X1tK/QQyQ==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/3] SDM845 Xperia GPIO names
Date: Tue, 19 Sep 2023 20:58:49 -0700
Message-ID: <169518233716.1055386.14298183520088830517.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230824-topic-tama_gpio-v1-0-014e9d198dce@linaro.org>
References: <20230824-topic-tama_gpio-v1-0-014e9d198dce@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Thu, 24 Aug 2023 11:58:51 +0200, Konrad Dybcio wrote:
> Sony provides the actual GPIO line names for most of the pins.
> Use them!
> 
> (and prepare camera GPIO regulators as a bonus)
> 
> 

Applied, thanks!

[1/3] arm64: dts: qcom: sdm845-tama: Add GPIO line names for TLMM
      commit: ed92c9c8964c713bbdd610cf616cd10a5b4b9045
[2/3] arm64: dts: qcom: sdm845-tama: Add GPIO line names for PMIC GPIOs
      commit: cb1e322cb3f126f19859627a6aeae928caf1f26a
[3/3] arm64: dts: qcom: sdm845-tama: Add camera GPIO regulators
      commit: 714a1cf29d7015f87df28333d8f702e8398aa176

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

