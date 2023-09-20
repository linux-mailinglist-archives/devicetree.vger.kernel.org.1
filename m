Return-Path: <devicetree+bounces-1735-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E0AB07A7D09
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 14:06:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D6E1D1C20970
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 12:06:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C13102E640;
	Wed, 20 Sep 2023 12:04:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B248723752
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 12:04:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C8E2C433C9;
	Wed, 20 Sep 2023 12:04:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695211480;
	bh=RgqfN1Xfu93qH4Xs8kjd1SVTw5FJiMEsbdBE8cSzoSw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=JIPB8+8SaGhnOnwhY5AOQ1YKEJgLdk5rqXNB4YBIIpwK+6qTfGr7Q2XxUPu5J3bxf
	 g2gWiOvBZmidtRyKP3b7v9F74QTfHCQINVJlSueaWTRoTimYE0kpwfhf2Fr7KvMGLk
	 zEezT+tEGiGROhnuLkFkGTWOZzP4q04xSQN8H1qiYWUilr20cuO0pO3GUwz5Eu5q8O
	 e1vC8NakXuhWFkcz7xEm0nLqSdc4oTRYxVGO9uImxin2wCbuXAEbOA9spRzt6FKW32
	 JZ9TdZvNVTZoOXgmUfJX1RQLdtuvjRbSihHdOH6xy+GUjTsUpNgXO6wPJsLauYDTAS
	 Iwhk6XfgEzIlA==
From: Lee Jones <lee@kernel.org>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
 tglx@linutronix.de, maz@kernel.org, lee@kernel.org, 
 Tengfei Fan <quic_tengfan@quicinc.com>
Cc: robimarko@gmail.com, quic_gurus@quicinc.com, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, quic_tsoni@quicinc.com, 
 quic_shashim@quicinc.com, quic_kaushalk@quicinc.com, quic_tdas@quicinc.com, 
 quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com, kernel@quicinc.com, 
 quic_bjorande@quicinc.com
In-Reply-To: <20230908065847.28382-3-quic_tengfan@quicinc.com>
References: <20230908065847.28382-1-quic_tengfan@quicinc.com>
 <20230908065847.28382-3-quic_tengfan@quicinc.com>
Subject: Re: (subset) [PATCH 2/6] dt-bindings: mfd: qcom,tcsr: Add
 compatible for sm4450
Message-Id: <169521147588.3404980.18311458594014218511.b4-ty@kernel.org>
Date: Wed, 20 Sep 2023 13:04:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.2

On Fri, 08 Sep 2023 14:58:43 +0800, Tengfei Fan wrote:
> Document the qcom,sm4450-tcsr compatible.
> 
> 

Applied, thanks!

[2/6] dt-bindings: mfd: qcom,tcsr: Add compatible for sm4450
      commit: 961c8e9cffce3bcbea982b609fd3df1913c9b905

--
Lee Jones [李琼斯]


