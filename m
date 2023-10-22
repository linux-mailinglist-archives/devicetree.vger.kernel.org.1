Return-Path: <devicetree+bounces-10605-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9F67D239C
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 17:46:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 77FB3281091
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 15:46:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31D432F4D;
	Sun, 22 Oct 2023 15:46:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IK9Y3FL+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131901FA4
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 15:46:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C334CC433C8;
	Sun, 22 Oct 2023 15:46:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697989564;
	bh=XdIoiVQW6YAaUGZzEHBDOTv9Q4nHTlvJRhqEFGaVzfs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=IK9Y3FL+C2o2Px0pt70pDLP+I77VvfdA6IiXV/9JgfREQqP0YAck55+LUfRdoJ8NH
	 eZEZDktf6CBh/zk0fjckTXKZ3wFC+8G8llzy5/j+uDaDwtjHs+4K7/G1PJGBo+MMaz
	 pkwN+YL/iZPjeEsRYo0H3lHP69sO+yJm5y6QlMASugP/V4z9ZuhR4DM2bDCtIjBC9x
	 rOd7seAyQvW0A2DIb3jLfu3VORHO7vs0lgYl8wzk1NVBJF63ZH/Zxhal60F+g/04wd
	 lgTuTpWogYMvrWIOqG45n88bYJ4fuZTvN+t81h7d7NcDQ0J9GxCCt1NWoR3nRqD8Ya
	 3s3ssZ8FeGaPQ==
From: Bjorn Andersson <andersson@kernel.org>
To: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Caleb Connolly <caleb.connolly@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	Joel Selvaraj <joelselvaraj.oss@gmail.com>
Subject: Re: [PATCH 0/2] dts: qcom: enable flash LED on OnePlus 6 and PocoPhone F1
Date: Sun, 22 Oct 2023 08:50:12 -0700
Message-ID: <169798982306.271027.8182488892508249394.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231001-b4-sdm845-flash-dts-v1-0-275a3abb0b10@linaro.org>
References: <20231001-b4-sdm845-flash-dts-v1-0-275a3abb0b10@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Sun, 01 Oct 2023 18:19:02 +0100, Caleb Connolly wrote:
> Like the SHIFT6mq, these devices both feature a dual-tone flash, enable
> them.
> 
> Both patches have been shipping in postmarketOS for a few months now with no
> known issues.
> 

Applied, thanks!

[1/2] arm64: dts: qcom: sdm845-oneplus: enable flash LED
      commit: 84b160876b4d8a97dc0feccc4426fefbc396d414
[2/2] arm64: dts: qcom: sdm845-xiaomi-beryllium: enable flash led
      commit: 7eedf7d6faaf0dd0807fff2ee595433faf08d138

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

