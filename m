Return-Path: <devicetree+bounces-299672-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6LoTFyKuC2omLAUAu9opvQ
	(envelope-from <devicetree+bounces-299672-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 02:26:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CC7E857588D
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 02:26:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 94125302291A
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 00:26:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB93A1EB5C2;
	Tue, 19 May 2026 00:26:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bwZ8fvVa"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6CC778F3A;
	Tue, 19 May 2026 00:26:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779150365; cv=none; b=uayZFf5iw0VCNgi/pM7XYMqL38C2Ryk365l7lYSFO0e5pz/NwfSiYWaGZ35NoY7P+mt2qXv0T1/XJW79dgnuuphtZ/zWuFGJ1BO4+dPxya+5mtza/TZmwfYOsaJwo45uZf/eEgXAt9J9mV/evqGBZULtyGnXEbamCaagf48sERk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779150365; c=relaxed/simple;
	bh=QeaGqPkY880B2H1MX0s9tMMl2MY+G0asnmaMXnfPQKc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sPD+uJ9DrShXHSxWWh8rtCkLXh6kB9byB/cnvFtxRvD//84JO1cpB20R0EI6k8b7S+E6I6VZ4MBRQVAptGNvZZ/VNLuq3gmRB/XiPfthM+pG0aOCl7DLvXGDaTT+ZBEes5C7Qb721K6XLQo0ZUJkCFvuaGHFAdI35dw1l5NMDvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bwZ8fvVa; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 085B1C2BCB7;
	Tue, 19 May 2026 00:26:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779150365;
	bh=QeaGqPkY880B2H1MX0s9tMMl2MY+G0asnmaMXnfPQKc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bwZ8fvVasjSWjmQ9trLx+1Kc5gEYizGmn7lCRAJ3ZRxP/pfxgUZa8rtV775wtpx1m
	 tHaCds2m0Ako3CCgo6X+fRnql+QzxoUyW0MtsgvkaS1gy8reTi4JdInP7CR653uzFQ
	 hsL/qKmtQJiZXXeOlgcagWqdykLArZ7cGBJN+V4zu9nQtQCXJct8HWpXRjNtUrbTCm
	 1DSH9odRjxb7u25+z0qxBLXe52VOvrs3HEQ0IdMPBPkfcjV0QpjZSk4BzSP6GNuWF4
	 z/KHfDMxjtzx1sNIIgCysBM15xtbWB8NRdHe4hVYsxac1n75G3/oPv436VI9tHGVm8
	 sEuhyBWIdDL/w==
Date: Tue, 19 May 2026 00:26:02 +0000
From: Yixun Lan <dlan@kernel.org>
To: Shuwei Wu <shuwei.wu@mailbox.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org, Vincent Legoll <legoll@online.fr>,
	Gong Shuai <gsh517025@gmail.com>
Subject: Re: [PATCH v5 3/3] riscv: dts: spacemit: Add thermal sensor for K1
 SoC
Message-ID: <20260519002602-GKE3679294@kernel.org>
References: <20260427-k1-thermal-v5-0-df39187480ed@mailbox.org>
 <20260427-k1-thermal-v5-3-df39187480ed@mailbox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260427-k1-thermal-v5-3-df39187480ed@mailbox.org>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-299672-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,intel.com,arm.com,pengutronix.de,dabbelt.com,eecs.berkeley.edu,ghiti.fr,vger.kernel.org,lists.infradead.org,lists.linux.dev,online.fr,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,mailbox.org:email,online.fr:email,d4018000:email,d4015000:email]
X-Rspamd-Queue-Id: CC7E857588D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Shuwei,

On 15:15 Mon 27 Apr     , Shuwei Wu wrote:
> Include the Thermal Sensor node in the SpacemiT K1 dtsi
> with definitions for registers, clocks, and interrupts.
> Additionally, configure thermal zones for the soc, package, gpu, and
> clusters to enable temperature monitoring via the thermal framework.
> 
> Tested-by: Vincent Legoll <legoll@online.fr> # OrangePi-RV2
> Tested-by: Gong Shuai <gsh517025@gmail.com>
> Signed-off-by: Shuwei Wu <shuwei.wu@mailbox.org>
> 
> ---
> Changes in v2:
> - Update compatible to "spacemit,k1-tsensor"
> ---
>  arch/riscv/boot/dts/spacemit/k1.dtsi | 101 +++++++++++++++++++++++++++++++++++
>  1 file changed, 101 insertions(+)
> 
> diff --git a/arch/riscv/boot/dts/spacemit/k1.dtsi b/arch/riscv/boot/dts/spacemit/k1.dtsi
> index 529ec68e9c23..e9952204224e 100644
> --- a/arch/riscv/boot/dts/spacemit/k1.dtsi
> +++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
> @@ -339,6 +339,96 @@ osc_32k: clock-32k {
>  		};
>  	};
>  
> +	thermal-zones {
> +		soc-thermal {
> +			polling-delay-passive = <0>;
> +			polling-delay = <0>;
> +			thermal-sensors = <&thermal 0>;
> +
> +			trips {
> +				soc-crit {
> +					temperature = <115000>;
> +					hysteresis = <0>;
> +					type = "critical";
> +				};
> +			};
> +		};
> +
> +		package-thermal {
> +			polling-delay-passive = <0>;
> +			polling-delay = <0>;
> +			thermal-sensors = <&thermal 1>;
> +
> +			trips {
> +				package-crit {
> +					temperature = <115000>;
> +					hysteresis = <0>;
> +					type = "critical";
> +				};
> +			};
> +		};
> +
> +		gpu-thermal {
> +			polling-delay-passive = <100>;
> +			polling-delay = <0>;
> +			thermal-sensors = <&thermal 2>;
> +
> +			trips {
> +				gpu-alert {
> +					temperature = <85000>;
> +					hysteresis = <2000>;
> +					type = "passive";
> +				};
> +
> +				gpu-crit {
> +					temperature = <115000>;
> +					hysteresis = <0>;
> +					type = "critical";
> +				};
> +			};
> +		};
> +
> +		cluster0-thermal {
> +			polling-delay-passive = <100>;
> +			polling-delay = <0>;
> +			thermal-sensors = <&thermal 3>;
> +
> +			trips {
> +				cluster0-alert {
> +					temperature = <85000>;
> +					hysteresis = <2000>;
> +					type = "passive";
> +				};
> +
> +				cluster0-crit {
> +					temperature = <115000>;
> +					hysteresis = <0>;
> +					type = "critical";
> +				};
> +			};
> +		};
> +
> +		cluster1-thermal {
> +			polling-delay-passive = <100>;
> +			polling-delay = <0>;
> +			thermal-sensors = <&thermal 4>;
> +
> +			trips {
> +				cluster1-alert {
> +					temperature = <85000>;
> +					hysteresis = <2000>;
> +					type = "passive";
> +				};
> +
> +				cluster1-crit {
> +					temperature = <115000>;
> +					hysteresis = <0>;
> +					type = "critical";
> +				};
> +			};
> +		};
> +	};
> +
>  	soc {
>  		compatible = "simple-bus";
>  		interrupt-parent = <&plic>;
> @@ -494,6 +584,17 @@ syscon_apbc: system-controller@d4015000 {
>  			#reset-cells = <1>;
>  		};
>  
> +		thermal: thermal@d4018000 {
> +			compatible = "spacemit,k1-tsensor";
> +			reg = <0x0 0xd4018000 0x0 0x100>;
> +			clocks = <&syscon_apbc CLK_TSEN>,
> +				 <&syscon_apbc CLK_TSEN_BUS>;
> +			clock-names = "core", "bus";
> +			interrupts = <61>;
> +			resets = <&syscon_apbc RESET_TSEN>;
> +			#thermal-sensor-cells = <1>;
> +		};
Ok, so if I understand correctly the thermal is a SoC feature, so with
above it will be enabled by default for all boards, but for the convention
we usually disable it in dtsi file, and enable it at board dts level

Please convince me doing above is better? as I'm not sure if there is
cases that user want it disabled (but could possible)..

-- 
Yixun Lan (dlan)

