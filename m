Return-Path: <devicetree+bounces-154269-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 604B3A4F87D
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 09:13:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9BE633AA1A9
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 08:13:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20A231EEA4E;
	Wed,  5 Mar 2025 08:13:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp134-84.sina.com.cn (smtp134-84.sina.com.cn [180.149.134.84])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCC9C1EDA1F
	for <devicetree@vger.kernel.org>; Wed,  5 Mar 2025 08:13:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=180.149.134.84
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741162406; cv=none; b=bnyNZ22c8MkrndNbq1bjfgacaEOmQRaai8Xpq5UqosHqLZmL7BqV8RbyFyRktB1/8zTkx+zzIF2vO++RMHLODyCCy1zg14qnWae1acPZmUffhh0y1kZsLAqnZn/838/S71eHyd2lm6q8ezj0VChchd+d9I/Tw5zXxA7K/ZJjhMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741162406; c=relaxed/simple;
	bh=WKL8FMSMGvnNlMcxUFJmjaZmbXHta4bdVva6X43xUHE=;
	h=From:To:Cc:Subject:Date:Message-Id; b=pcB9IGBJHJJQUoJJF31891nGmc3LxksQlC69GJ7u34GRUscsDSYahCyVFJs6hCaixxQyMuPIUatSKDsZmthoPHKZdSPVRA4jwbKv5FEnlROUs/BQX422jf2r2qSGo8JYfl/BLbYoj+Q9/rH1+J3VUT8mRRPBFJjrhoh7y4HVjR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=180.149.134.84
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([180.159.108.137])
	by sina.net (10.185.250.29) with ESMTP
	id 67C8079800007499; Wed, 5 Mar 2025 16:13:13 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: 931F00EF7C0A4302A6C8BAFB9EC541E1
X-SMAIL-UIID: 931F00EF7C0A4302A6C8BAFB9EC541E1-20250305-161313
From: Zhang Yi <zhangyi@everest-semi.com>
To: krzysztof.kozlowski+dt@linaro.org
Cc: tiwai@suse.com,
	amadeuszx.slawinski@linux.intel.com,
	robh+dt@kernel.org,
	conor+dt@kernel.org,
	alsa-devel@alsa-project.org,
	broonie@kernel.org,
	devicetree@vger.kernel.org
Subject: RE: [PATCH v3 2/2] ASoC: dt-bindings: Add Everest ES8389 audio CODEC
Date: Wed,  5 Mar 2025 16:13:11 +0800
Message-Id: <20250305081311.86552-1-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

> > 
> >>> +
> >>> +  prefix_name:
> >>
> >> No underscores in node names, missing vendor prefix... but more
> >> important:  I don't understand the need for this property. Description copies property name so it is not useful.
> 
> And these comments as well.

The prefix_name is used to distinguish the dapm and kcontrol of each individual codec.
And I will update name of the property 

> > 
> >>> +  everest,dmic-enabled:
> >>> +    $ref: /schemas/types.yaml#/definitions/flag
> >>> +    description:
> >>> +      The property is a choice between PDM and AMIC
> >>> +
> >>
> >> No supplies?
> > 
> > I will drop the property
> 
> I did not comment about dmic, but meant missing power supplies, which
> usually are placed here.

I apologize for misunderstanding your comment.
But we don't have properties about the power supplies

