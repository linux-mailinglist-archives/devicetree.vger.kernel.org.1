Return-Path: <devicetree+bounces-221244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5742DB9E008
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 10:13:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 81E8D19C66E0
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 08:14:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C03E12E7F2F;
	Thu, 25 Sep 2025 08:13:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cp2oTldF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BF9D2E7193
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 08:13:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758788028; cv=none; b=TVWBJ+pPxYoe05IXwnuIGI3f9aMf6sjW/9BBev30IN/e9Typ2QQhvDEntPBbUFdcE3aiT932FIyASSizEGLkFkZsPI0LQz00KbeHO0+/Q1YHS9n7/9FHWuiWLuAN+L3R1sf5cMYQ6XEd039L+FvuduAeVdrMLxU9y3VAG9zRe+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758788028; c=relaxed/simple;
	bh=6xgy1DV8hqDQp2+4paukanNMqpv3nebP7gwfsphXnFU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ukO+5hPu8cHbMXo3w2x7DF3i92Rv+381S43Cb8fGTDKWgPch2KQ9V1eqpDoSJDYELYAdwJqCndORx+mJzerSHp1BO7o8UxXr4c7RPQB8ecu1zfktA0ls2gWdYvAHWtBemPMX+uBz+Rd4n+y+H35+EqNYwQPZwZ8RoLbGITY4Wpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cp2oTldF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1609BC16AAE
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 08:13:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758788027;
	bh=6xgy1DV8hqDQp2+4paukanNMqpv3nebP7gwfsphXnFU=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Cp2oTldFqmMioL66dq+cIdA2fwv+76nFe+nvnhvtMx4bhLYvE/pRgBshuVIQIk0y+
	 c7vUoT03pKhyHb+h5VbpXDht3Us/TTAMJEwmihhFQVc51ZVWBRtn00dX/awbOCiLJg
	 ZKRUsdEFy1d7seyI5aMnZSxIspkZir2z2ugHzAK0ObYO+w1EZoYScOQJb0dFPdpjVn
	 a81ejpR2oX2b4wbAFVsDb4Jh2aV+tWrERgKoUtWmnHtvGoN0sAa/NJXz+6Ih4dptLO
	 gsWq0yE0J+RUDirqvySmWz+g19i5K2//Nf5NcKZ3s5rNp6vfKqte7Aq5+qT9WNjli+
	 QA3VG6C9eno6w==
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-279e2554b5fso5961025ad.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 01:13:47 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV0v07XygS5pVV0YfR7J6sdw1a7wXbtaYVVQY0Xj5SQKwRJtAkaA137pfgZ3On/ZA23qe+JPNzAWSz5@vger.kernel.org
X-Gm-Message-State: AOJu0YxuBsxDptVHe01VHvk3KQscCIkQsPDVft1EyZFIKMyCcx37P7cj
	E17kjQ2ONsNtUNshnsWGHv3Zrv9iTqYHtxo8rVMBrtWojbYtiVCrS571CzfqPaThnxJZlBtfOKM
	pxMn0sti4tWNTNPWr5iBEX4nNOldb3eo=
X-Google-Smtp-Source: AGHT+IF236jaAp4/rzwPts8ocm70Wj0QKGsGeIC5djJA3YS+DawATMEDddVRK+GjCtafW4q45y03wn5Swx20u9oEeyI=
X-Received: by 2002:a17:903:1205:b0:269:95a1:94c2 with SMTP id
 d9443c01a7336-27ed6ad069cmr22371485ad.3.1758788026613; Thu, 25 Sep 2025
 01:13:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-18-24b601bbecc0@oss.qualcomm.com>
In-Reply-To: <20250925-v3_glymur_introduction-v1-18-24b601bbecc0@oss.qualcomm.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Thu, 25 Sep 2025 17:13:34 +0900
X-Gmail-Original-Message-ID: <CAJKOXPd_TgLBy50evLVO2LXS7N2S=yHKO+=AwpQv1On==nDWTQ@mail.gmail.com>
X-Gm-Features: AS18NWCkq1NL0OZpoilVWTB3c_ZC8sqWHMtnKD12Y3W3MiBMvTJMZuW_VvZuNTg
Message-ID: <CAJKOXPd_TgLBy50evLVO2LXS7N2S=yHKO+=AwpQv1On==nDWTQ@mail.gmail.com>
Subject: Re: [PATCH 18/24] arm64: dts: qcom: glymur: Add PMIC glink node
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"

On Thu, 25 Sept 2025 at 15:34, Pankaj Patil
<pankaj.patil@oss.qualcomm.com> wrote:
>
> From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
>
> Add the pmic glink node with connectors.


Please stop this. This is not a separate commit!

Same review as year ago, two years ago and three (probably) years ago.

