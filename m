Return-Path: <devicetree+bounces-274104-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wJnpFsVusWlVvAIAu9opvQ
	(envelope-from <devicetree+bounces-274104-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:31:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C90EF264928
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:31:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 17E9031E1F0F
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:24:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 924C23164DF;
	Wed, 11 Mar 2026 13:24:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="P75muh1h"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41CBB2DCF6C;
	Wed, 11 Mar 2026 13:24:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773235453; cv=none; b=bpNL2vYYVuNNjEEwnGQHKywBZX3MrPtsAwYosChkc3sm3SKmhgubBa1JBkmjJGnyMrzp5JgbCNUQR9DlogfIC09vpUw9w3fzwiMkoJKrLptgf0C1ELyrIk0KbvBNR6NxdyiUlGBLfqUJ7DzIA6W1kgW+lwvrX4icw/GTbxltXJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773235453; c=relaxed/simple;
	bh=JehtXIHbXXLGx9W63Y/jT3qPHXgfE5mWV1/AbmRDrTk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LR4Zio3jcpLcTcLTudq0U+lvR7/sjiwkh/0xOyqCtB65fkf1jZdTo6vO2HIN+g5wMn/iF7yR0myHljhPzN7hagReHc8qf/y4CR4F954AUx0079BwKuDYkf8DPAxdJ+EoBOjU9J0R2C+X7HQXtNeUOO8b8wB1flbtJch/KVnu2tE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=P75muh1h; arc=none smtp.client-ip=192.198.163.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1773235451; x=1804771451;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:content-transfer-encoding:in-reply-to;
  bh=JehtXIHbXXLGx9W63Y/jT3qPHXgfE5mWV1/AbmRDrTk=;
  b=P75muh1hp6ckbhk1EHc/GVCasP2OBqAB1JQbau+wupsZZpmwUFLQckVL
   qofDCCViSlA7VgF5IxXQHFViEs7/2HTDRLL+yKsP4eBz5zvUM18DeU4QM
   LDzZKwxxV5jhGNSdQhUrMhFfH8s89x/axBA1SNNLM08pqWOhv6gQuEJxz
   dj2EOK6JtL/HeL8qlXtnS4nqlbpJiyjgYjJok1OWbZYmJriAkzjyibiVD
   8+7t9yD34MCYtrqIS81nRvFz7XaewCkTknNlB7p46rfUk47rKIrp6r3Mp
   FXxtkU5y7nzVnLYhVSJC87Cnqk9RSW7GBGjoI0uIQyG3r80LUkwPUsy/H
   A==;
X-CSE-ConnectionGUID: TQiLXuLyQtK4pS5MWAAhiQ==
X-CSE-MsgGUID: l9/K1A6TRVGYYDYnlpGQrg==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="74381620"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; 
   d="scan'208";a="74381620"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
  by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Mar 2026 06:24:10 -0700
X-CSE-ConnectionGUID: ZNge3v/KRV+16r+nDY4xrQ==
X-CSE-MsgGUID: hgLOv9dhS+uWUfuQGD5NGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; 
   d="scan'208";a="224622625"
Received: from black.igk.intel.com ([10.91.253.5])
  by orviesa003.jf.intel.com with ESMTP; 11 Mar 2026 06:24:08 -0700
Received: by black.igk.intel.com (Postfix, from userid 1008)
	id 4EE4795; Wed, 11 Mar 2026 14:24:07 +0100 (CET)
Date: Wed, 11 Mar 2026 15:23:26 +0200
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Elson Serrao <elson.serrao@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH 0/1] =?utf-8?Q?dt-bindings?=
 =?utf-8?Q?=3A_connector=3A_Add_role=E2=80=91switch?= provider phandle
Message-ID: <abFszhkrN_X1ax8U@kuha>
References: <20260223191042.825136-1-elson.serrao@oss.qualcomm.com>
 <1c790a52-3d84-46b8-aa14-1d005671e416@oss.qualcomm.com>
 <c57cc1cd-c7cd-41d5-adef-c2e69de72f46@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <c57cc1cd-c7cd-41d5-adef-c2e69de72f46@oss.qualcomm.com>
X-Rspamd-Queue-Id: C90EF264928
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274104-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heikki.krogerus@linux.intel.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,intel.com:dkim,intel.com:email]
X-Rspamd-Action: no action

Mon, Mar 09, 2026 at 01:41:20PM -0700, Elson Serrao kirjoitti:
> 
> 
> On 2/24/2026 10:56 AM, Elson Serrao wrote:
> > +Heikki Krogerus <heikki.krogerus@linux.intel.com>
> > 
> > Adding Heikki since this relates to usb-role-switch provider modeling.
> > 
> > Thanks,
> > Elson
> > 
> > On 2/23/2026 11:10 AM, Elson Serrao wrote:
> >> Hi all,
> >>
> >> This RFC proposes a generic Devicetree mechanism for a USB connector to
> >> reference the USB role‑switch provider when there is an intermediate,
> >> block between the connector and the controller in the OF graph.
> >>
> >> Problem
> >> =======
> >> OF‑graph links are strictly point‑to‑point via remote-endpoint, so a
> >> consumer can only discover its immediate neighbor in the graph. When an
> >> intermediate node sits between the USB connector and the controller, the
> >> connector cannot identify the controller (the role‑switch provider) from
> >> the graph alone.
> >>
> 
> [...]
> 
> Gentle ping on this RFC.
> 
> When you have a moment, I’d appreciate guidance on whether the proposed
> modeling direction looks acceptable.
> 
> For context only, the following DTS patch illustrates this modeling:
> https://lore.kernel.org/all/20260309203337.803986-11-elson.serrao@oss.qualcomm.com/

FWIW you proposal is okay by me.

thanks,

-- 
heikki

