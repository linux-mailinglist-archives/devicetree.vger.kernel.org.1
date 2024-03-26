Return-Path: <devicetree+bounces-53450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C592988C4D6
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 15:14:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7CB03320D0E
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 14:14:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B88A12D211;
	Tue, 26 Mar 2024 14:13:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b="ThSkPvrq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-40130.protonmail.ch (mail-40130.protonmail.ch [185.70.40.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B64812D1EE
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 14:13:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.40.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711462392; cv=none; b=dy4yvgVZQJuJUAXQkjZE9f75OF1AqzfGC8ceKj3ufeuyBC+neBxTgLOM48/Ve0lRpQcky2vZRWdMkdDbKzD1upynx3h2sqK/a0I720Lz0GRoT8VSKVBIB4l16w063lpC0ntApOUyaMB1ENLuTUJzI6KEE6Ve3Yh2f9eRzb2CYMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711462392; c=relaxed/simple;
	bh=n9z/gDZDjYHMPOJp96or4lFZ6RAQsFRPlqy/HgMln+g=;
	h=Date:To:From:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=jbG2DW1llgx4yt4cDJ16lv2hiakValGTEeDbC4LzHf78hJBktj6SVkQxw0Lsctv0I+mz8q3WBFnDRFNAE7Jsw1IvYf4f3Zv9JfGlYJLaX7kH/Xcastobuox+J7CNV/5RnA54aig3y7Cs/Z2jxmZHEpyY8/SKMuFZSgrLEz9zgFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com; spf=pass smtp.mailfrom=protonmail.com; dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b=ThSkPvrq; arc=none smtp.client-ip=185.70.40.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=protonmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1711462382; x=1711721582;
	bh=quQENs3rklSsj+2GdwQaRpRYzCTsHSLXn4kJT0x0+f8=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=ThSkPvrqgIoy6VfgshgKlw6Tl91BwJvnC1KZJf6cS0Gk1mdQeQRnWdYe2ZVYnnW8W
	 HxLMTuiewSpUaYZZiFulLiY8mrQTQJt6gl7jLEyAzHHz2bWtWJthus+ohhPUqFrPO4
	 8rLM/bunvFAqtQGFA7YBRlHkuMlQiuxCIlPEmS5oCe1ucoLnOa7cR6bKghYPMUsb6O
	 lIxINcVgoPGMzokJsBqKz87KGFa94VAvDVhALw+4XDmAOzhSL8WO+pxIVLIYmpq8RY
	 EB2irEQ2DsQNOEz1Nm/I8KNSidIZsagCKdrZrTeXTkwui+Ae7gsbU3pxOym2KprA4A
	 X1V35ov5VLnyg==
Date: Tue, 26 Mar 2024 14:12:40 +0000
To: linux-kernel@vger.kernel.org
From: Raymond Hackley <raymondhackley@protonmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Stephan Gerhold <stephan@gerhold.net>, Nikita Travkin <nikita@trvn.ru>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Subject: [PATCH 0/2] arm64: dts: qcom: msm8916/8216-samsung-fortuna: Add samsung,fortuna binding
Message-ID: <20240326141222.200452-1-raymondhackley@protonmail.com>
Feedback-ID: 49437091:user:proton
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Add common binding samsung,fortuna used by the following
Samsung Galaxy Grand Prime devices:
- SM-G530FZ (msm8916-samsung-grandprimelte)
- SM-G530H  (msm8216-samsung-fortuna3g)
- SM-G530W  (msm8916-gprimeltecan)


