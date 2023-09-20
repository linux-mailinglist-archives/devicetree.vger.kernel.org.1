Return-Path: <devicetree+bounces-1753-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7B47A811C
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 14:42:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EC3F6281CA1
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 12:42:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFECF1865F;
	Wed, 20 Sep 2023 12:42:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E056930F80
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 12:42:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53223C433C7;
	Wed, 20 Sep 2023 12:42:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695213753;
	bh=k4Z1wmvH94m6kCfsDSeNjGlbtOzMt7p03Dmb2xg5PR0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JnHeeu07A6HpB7Vk5MqcOfUcMHuTV4fuYVM3MGqP6DK5ScKdsmbzIcTsI2oIRH26k
	 RDCnDlnBMXj3LjVLyGWY+NEARswOcRcaa+EGW0+i5z1BXvsZBxSTevcOG4p0kC7ijt
	 HORu8Jd+OovtkSzI+9tvsazQnvPTFoKK7ZALREkEJjJLNKpThaUSYEdJXgjNEDMZa2
	 bj4kId21uT9ORVkztYlf/PE0+VZK+M7ajZMBP3XfB0krd9U4k+Zgp+PqdKQDVTXhxP
	 imugeLbMv+PU5jixT5JvYnFfZIJQe/3CUScI8aS8MEcSrn9nEvm4SJwSw0EYPXmrhf
	 v6+5EBp5uuVEQ==
Date: Wed, 20 Sep 2023 05:46:40 -0700
From: Bjorn Andersson <andersson@kernel.org>
To: Tengfei Fan <quic_tengfan@quicinc.com>
Cc: agross@kernel.org, konrad.dybcio@linaro.org, djakov@kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, quic_tsoni@quicinc.com, quic_shashim@quicinc.com, 
	quic_kaushalk@quicinc.com, quic_tdas@quicinc.com, quic_tingweiz@quicinc.com, 
	quic_aiquny@quicinc.com, kernel@quicinc.com
Subject: Re: [PATCH v4 2/2] pinctrl: qcom: Add SM4450 pinctrl driver
Message-ID: <yyabjpexovdshufxeoi6ezu4gpmy5et4pql2y2mlfjbpzoo7jh@scjasfts6bvl>
References: <20230920082102.5744-1-quic_tengfan@quicinc.com>
 <20230920082102.5744-3-quic_tengfan@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230920082102.5744-3-quic_tengfan@quicinc.com>

On Wed, Sep 20, 2023 at 04:21:02PM +0800, Tengfei Fan wrote:
> Add pinctrl driver for TLMM block found in SM4450 SoC.
> 
> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>

Reviewed-by: Bjorn Andersson <andersson@kernel.org>

Regards,
Bjorn

