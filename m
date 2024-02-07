Return-Path: <devicetree+bounces-39319-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9057184C3CA
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 05:46:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 47C8C28A690
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 04:46:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1462125C1;
	Wed,  7 Feb 2024 04:46:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JWcZociQ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76B5F12E47;
	Wed,  7 Feb 2024 04:46:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707281206; cv=none; b=m6Gqu2k7pRofHEEjg26GVA3mmRwQwWCSfQQj8Uzqeg7EYK6+MjU6BBnnMdolGZF0xetRleYCuZbNv/yuSvdMPB+NqKjrgq91fuhZv36bR2uovunI0jw3zJGcb38A7/tLCONVEB/6/z5+V/CwrZNX5Ho/jTD9Ygvbk61pFzaJ8CQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707281206; c=relaxed/simple;
	bh=LEgwxArvA1zn85iBwxkT8YDBqbEXvZ2lO+6+usr+JPc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=A9HJKMOGBBH4p1uZzANkwfcqJUtuQq1l+LWdGjOAbO8BEqt0i7d3l09zysu1OXDsCiJ74EYrhXaDHeroGRaZSA14KhM4jztZfgP7x0cAivczRW/N50zy3JNDo8WekWtc6omPoGXFXRjIGLmHktCXDCgZ2kNPvjwvgwa7S2uObwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JWcZociQ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2211BC433F1;
	Wed,  7 Feb 2024 04:46:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707281205;
	bh=LEgwxArvA1zn85iBwxkT8YDBqbEXvZ2lO+6+usr+JPc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=JWcZociQzJKa82j0aDNPDHOptjHnVo6Bll9oFKthdjn6WmPJ0+rKk8M5ZH40pErwU
	 5X/6hCwoOwbEgdGhAhIbuMR9kkvcN5IgFytg6yl93Vi7oK/NUZOgfbwAlsdB4Fuzmj
	 ouLjpPisn4q7iBztRXjw1r/NtBfBzGY/S5BYkS4hX8+ZACbLd33UtvIGnnqoyOiXcB
	 yA76kGWNCvDf5dTxqAz9IInegoiFYD97zGASRnzjoPaaiXa2RE4uAJS9HPKwRhLvT0
	 lJfp0jj0KlxjN4V4lWlamhLndVdQsXqfLDhhtUGtvLqAtuEgqEIJ7KNj23lnVFH3wH
	 KrtAuaPwQCBMg==
From: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: soc: qcom: qcom,pmic-glink: document X1E80100 compatible
Date: Tue,  6 Feb 2024 22:46:10 -0600
Message-ID: <170728117664.479358.16056803129567379036.b4-ty@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240129-x1e80100-pmic-glink-v1-1-e45cf194b964@linaro.org>
References: <20240129-x1e80100-pmic-glink-v1-1-e45cf194b964@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Mon, 29 Jan 2024 15:28:29 +0200, Abel Vesa wrote:
> Document the X1E80100 compatible used to describe the pmic glink
> on this platform.
> 
> 

Applied, thanks!

[1/1] dt-bindings: soc: qcom: qcom,pmic-glink: document X1E80100 compatible
      commit: 0ebeba917f030811f9ea30cd6c435e5b9ebbed43

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

