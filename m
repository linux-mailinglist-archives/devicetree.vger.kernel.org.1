Return-Path: <devicetree+bounces-257715-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ACxLFf07cGmgXAAAu9opvQ
	(envelope-from <devicetree+bounces-257715-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 03:37:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B27934FE02
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 03:37:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 40ABE88FDFD
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 02:37:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58D74347FC8;
	Wed, 21 Jan 2026 02:36:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mrHGGMTD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D583347BCC;
	Wed, 21 Jan 2026 02:36:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768962964; cv=none; b=KBkBbxukQoiIoM7nyFPJ22YmLYdL1eELBMdZZu0fjHg3vUn4aTWJp0l1PVpwPkKM4GUCV+qFw6PGsCU5/fQCQ2hc2JpXY1eshjDsgGb2ycd2mMDvksbwXGdVg5GDSUamuueS5uYR1bX5RZCstp3IO6E1tSEQQ20VauIQfJwFmL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768962964; c=relaxed/simple;
	bh=+kwfQd346XvT4F4tpaDb9XDsgR0/Rr2OZdU/sCSHDiE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=VqawBcNGgNnb1kFVjynnLFtY65dsT4QF5UxzWrs2mJlze1BeY81VF7S1/fTF91i/rQ3gne3lrIbfOz4cUbCRMqF0tKQMYAhLkWPqWHhCT5HJz/Q6bvM5OkNgkzFrwLv0ZNy618Qll/8QheoZZBExq4GiT1USUghEzP+s23FdFBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mrHGGMTD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 49E90C16AAE;
	Wed, 21 Jan 2026 02:36:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768962964;
	bh=+kwfQd346XvT4F4tpaDb9XDsgR0/Rr2OZdU/sCSHDiE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=mrHGGMTDzSiChFHS8gKgCfXVr3AE92x2zGYsnhQFR9nCNotsTqrhYRhoMSMML0CHl
	 g8I3M90sC6sGLoJSvuJdQJHrzty8K3aO9BKjSVRSegGrOhX/MGzHC3sZ4C33rVYMxB
	 zwM4PuDC5P+YLWWjOTPs0SmzcWyvHhQKf1rnwpIzy+dEImeIlWetzgeFTNfOumaf8C
	 6+JczwhrpykijCjjZ0FyMdYpKrOL53UJHHfABW99QA1nNGIR1IN9MyauLE06YUOJCm
	 oEZz7I+29YlIRjmiH8g446fhb7qzsUTp76vFDPdtuCYWUfyY0ZHjHk1VF/zeBaIP70
	 u/XhB+qzPlSMg==
From: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
	Jie Gan <jie.gan@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Abel Vesa <abelvesa@kernel.org>
Subject: Re: [PATCH v3] arm64: qcom: dts: sm8750: add coresight nodes
Date: Tue, 20 Jan 2026 20:35:53 -0600
Message-ID: <176896294112.1060469.7584573761280076420.b4-ty@kernel.org>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251120-add-coresight-nodes-for-pakala-v3-1-03bb7651bc90@oss.qualcomm.com>
References: <20251120-add-coresight-nodes-for-pakala-v3-1-03bb7651bc90@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	TAGGED_FROM(0.00)[bounces-257715-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andersson@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: B27934FE02
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Thu, 20 Nov 2025 21:48:54 +0800, Jie Gan wrote:
> Add CoreSight DT nodes for AOSS, QDSS, CDSP, and Modem blocks to enable
> the STM and TPDM sources to route trace data to the ETF for debugging.
> 
> 

Applied, thanks!

[1/1] arm64: qcom: dts: sm8750: add coresight nodes
      commit: ebd1eb365caef3c815cb8a041d300dfe4263faea

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

