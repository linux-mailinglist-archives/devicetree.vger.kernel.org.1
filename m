Return-Path: <devicetree+bounces-10611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D467D23A5
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 17:46:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E46AE1F215BA
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 15:46:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6D6E10952;
	Sun, 22 Oct 2023 15:46:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q+S5QuC4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8846F63B2
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 15:46:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C9E9C43397;
	Sun, 22 Oct 2023 15:46:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697989571;
	bh=KM1jYkXyTzK0guELYzlv7dUspsOjWBjpStn2Ayrrro0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Q+S5QuC4+zia9Zl89xR6XEJkQtu0HrEfwuUpzMMz+KZwnfj4oKP10/i0l54pBwzbi
	 a6ikST1jY6UX0/6opWaeyhb7GjJce5X8ZNNWH8vlOhVtCFmdwS3mPXA5WR6pZlxhLz
	 5zln5T8qOp1rBjCEvceItQcHAut4vjxVO1rPpbdIK3eA23tnQ0kcsHQkV2zXDbiT1a
	 CE1EJCwr8KpUTRWomH2AW5OhfhQwvn9wJj02Gr4beRmpicNSgk4eI1d5TIOdqxBD2v
	 eGUxm5hzQIgKmjHmTgXLvoKgAmdflSsb4p6DxWuj0bRTXX0HQZEkd13C0JXMOt5xZx
	 wNsD51X3mC7iA==
From: Bjorn Andersson <andersson@kernel.org>
To: ~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Luca Weiss <luca@z3ntu.xyz>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] Small style fixes in msm8974.dtsi
Date: Sun, 22 Oct 2023 08:50:18 -0700
Message-ID: <169798982357.271027.2288868085918805203.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230627-msm8974-sort-v1-0-75c5800a2e09@z3ntu.xyz>
References: <20230627-msm8974-sort-v1-0-75c5800a2e09@z3ntu.xyz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 27 Jun 2023 21:45:12 +0200, Luca Weiss wrote:
> While making sure the nodes are sorted correctly, I also noticed that
> some lines are wrongly indented. Fix both.
> 
> 

Applied, thanks!

[1/2] ARM: dts: qcom: msm8974: replace incorrect indentation in interconnect
      commit: 207f4ce365819ac68b634153d074252338d00ef6
[2/2] ARM: dts: qcom: msm8974: sort nodes by reg
      commit: 4960e06d386ecc5307bc2e66a77d5f06df1e2a6f

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

