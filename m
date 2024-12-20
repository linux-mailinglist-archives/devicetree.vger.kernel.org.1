Return-Path: <devicetree+bounces-133112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CA0B9F93ED
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 15:07:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3DC721883EF0
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 14:04:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 577F0215716;
	Fri, 20 Dec 2024 14:04:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4D821C5488;
	Fri, 20 Dec 2024 14:04:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734703455; cv=none; b=VJDkiCK17qalCSetv4cnF+HQqNRr3L18evq3TDdKjLNUnnVxWJpSD+ynzO+XOTaaQfF04EeVGLHLQJExANsYfgyvhK7qXehp/ILoUjqK5/BkwqbeU3Mo5d929vCSY3zqhd1HidloLWrFl/yfHvlQDbakBgNUHTGgtyeKirR+hAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734703455; c=relaxed/simple;
	bh=FK7hFF0fYPrGrgkACLya+718ufRWscu+DBF1qzLiJGs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=skOWv7bOH+QaQ+vRakJLlkWDPtA4DzU3IenTx+fmIc6oJKtr0CDSTUEP8+wzJGpl+IR0YNf2lhVsBkdTSzvrWsb1ACvhQL0VH1DxHIGYJbeDkRZKikhEffBZs0pKy57rs6kjkHqiBpwi1AavvuHUCBwxcz8Wl2OvJRWLSDGwCnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 183AE1480;
	Fri, 20 Dec 2024 06:04:41 -0800 (PST)
Received: from bogus (e133711.arm.com [10.1.196.55])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E84FB3F720;
	Fri, 20 Dec 2024 06:04:10 -0800 (PST)
Date: Fri, 20 Dec 2024 14:04:08 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
Subject: Re: [PATCH 1/3] dt-bindings: arm,psci: Allow S2RAM power_state
 parameter description
Message-ID: <Z2V5WMN5aHQwQlNH@bogus>
References: <20241028-topic-cpu_suspend_s2ram-v1-0-9fdd9a04b75c@oss.qualcomm.com>
 <20241028-topic-cpu_suspend_s2ram-v1-1-9fdd9a04b75c@oss.qualcomm.com>
 <Z1LQOmEfFy640PjG@bogus>
 <54cc4221-ba5f-4741-9033-20874265ca01@oss.qualcomm.com>
 <Z2VUiHWHgbWowdal@bogus>
 <349bac70-87e0-4870-a3f0-9f6a3b3e6824@oss.qualcomm.com>
 <Z2V3amqWYDUWA2uM@bogus>
 <c80c4cdb-48e1-4b6f-8ab8-fad6e100af00@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c80c4cdb-48e1-4b6f-8ab8-fad6e100af00@oss.qualcomm.com>

On Fri, Dec 20, 2024 at 02:57:34PM +0100, Konrad Dybcio wrote:
> On 20.12.2024 2:55 PM, Sudeep Holla wrote:
> > 
> > Please take a look at the preconditions for both the calls. They are
> > different.
> 
> Which is *precisely* why I want to tell the OS that it's a S2RAM state,
> so that different actions can be taken in peripheral device drivers.

Yes we do that for SYSTEM_SUSPEND. And CPU_SUSPEND is not SYSTEM_SUSPEND
hence 2 different APIs. My NACK still stands.

--
Regards,
Sudeep

