Return-Path: <devicetree+bounces-277245-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IDw8NbOuumlXagIAu9opvQ
	(envelope-from <devicetree+bounces-277245-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 14:54:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB282BC6AE
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 14:54:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 58F8930402A7
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:53:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 154243DCD9B;
	Wed, 18 Mar 2026 13:51:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iuaCdyCS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 979A63E1D00;
	Wed, 18 Mar 2026 13:51:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773841863; cv=none; b=JbQcMV2tZ8IyPg2Q/DnKoCSsiHiuBu7wh/WWeSCslZGhCYwNpk85Uc8nXUEfiPW5LJtVGTUE8hYkLGGEPHD0MsHDyEZizUfQNDbQ4BzRMBMuTSL41iVZHrPtukHwuRgHyWel8m65yNdLRQK32KLMhYqcD7lPmbaxYLHrQ8FO4Ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773841863; c=relaxed/simple;
	bh=QBgmPOxk+0qXhIYdcKT5w9xflL+wT4LVz36mjivnjUE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=JHu2uvuUxgBUTHPuJZfmVnsLb7drq5c4MmQajOjH+7YOTigBpqcmefGXwZoRh32M0AaJSxP8xr8ztTm8GwMy0JMXMsq3/Z0q/TiznafCItsA171Eq1cYpV1yWZ5ym8Pkxp4f2T8lmm/y8/pAl+v/7cCLbdjrlioyhdPEvfjAcWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iuaCdyCS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1BB9AC19424;
	Wed, 18 Mar 2026 13:51:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773841863;
	bh=QBgmPOxk+0qXhIYdcKT5w9xflL+wT4LVz36mjivnjUE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=iuaCdyCSEXxn6rl/jCDnLw1LBCXjlFl+dwMARbjCY4r1iwCtfsaa8SWKpCg6+AYRy
	 Rm0i/5bHaDR4O/2v6QMwwxuAfvMRMs9uxI1zy5BIlQlLAQCOK1ZUkORPe+XBTrPFeJ
	 luWR4MefLhTl8UJRyDTzP/r/s5LgZP7nii/b2fb6pgvyy3f/3dPVw9sJK6dgtpSuKE
	 BoqmqAepu5or2u6lqdtBhcCkwgd1/9ORF0Yuf3/cC7GT9e/kutJpkmsv6fzl7QOjXu
	 eB3QS9du0OHEThxk1i8PwEAw4C6qNngbZ8MIPAyw61NWDYPGHPAbJYPgjaFufR4k3+
	 vZli2PDAZgmjg==
From: Bjorn Andersson <andersson@kernel.org>
To: linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Ayushi Makhija <quic_amakhija@quicinc.com>
Cc: dmitry.baryshkov@oss.qualcomm.com,
	sean@poorly.run,
	marijn.suijten@somainline.org,
	robh@kernel.org,
	robh+dt@kernel.org,
	krzk+dt@kernel.org,
	konradybcio@kernel.org,
	conor+dt@kernel.org,
	andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	rfoss@kernel.org,
	Laurent.pinchart@ideasonboard.com,
	jonathan@marek.ca,
	jonas@kwiboo.se,
	jernej.skrabec@gmail.com,
	quic_rajeevny@quicinc.com,
	quic_vproddut@quicinc.com,
	Rob Clark <robin.clark@oss.qualcomm.com>
Subject: Re: [PATCH v7 0/2] Add DSI display support for QCS8300 target
Date: Wed, 18 Mar 2026 08:50:19 -0500
Message-ID: <177384182912.14526.10589372231190433996.b4-ty@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260217090955.2446470-1-quic_amakhija@quicinc.com>
References: <20260217090955.2446470-1-quic_amakhija@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277245-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,poorly.run,somainline.org,kernel.org,intel.com,linaro.org,ideasonboard.com,marek.ca,kwiboo.se,gmail.com,quicinc.com];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andersson@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9FB282BC6AE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Tue, 17 Feb 2026 14:39:53 +0530, Ayushi Makhija wrote:
> This series enables the support for DSI to DP bridge port
> (labeled as DSI0) of the Qualcomm's QCS8300 Ride platform.
> 
> QCS8300 SoC has DSI controller v2.5.1 and DSI PHY v4.2.
> The Ride platform is having ANX7625 DSI to DP bridge chip from Analogix.
> 

Applied, thanks!

[1/2] arm64: dts: qcom: qcs8300: add Display Serial Interface device nodes
      commit: a5a3b6977ab7a42681f297a74ac49779a82328c7
[2/2] arm64: dts: qcom: qcs8300-ride: add anx7625 DSI to DP bridge node
      commit: 20eedeaa4fa04d059e5c054ca37bc34b1089c43a

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

