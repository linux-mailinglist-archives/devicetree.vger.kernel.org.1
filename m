Return-Path: <devicetree+bounces-140716-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 558D4A1B18C
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 09:21:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 33B5C1889D2C
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 08:21:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C12B218E97;
	Fri, 24 Jan 2025 08:21:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="PbUvk0YT"
X-Original-To: devicetree@vger.kernel.org
Received: from fllvem-ot04.ext.ti.com (fllvem-ot04.ext.ti.com [198.47.19.246])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC4F914A0A3;
	Fri, 24 Jan 2025 08:21:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.47.19.246
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737706884; cv=none; b=TaPNLWuAecbKHTqvFWLt8KqZQp/rcNr4UZ8tA4/2Q1VWkA9d9ZDY0HTy/dwv3ZiWQKCCupsWxY720eMiXWxnxCp2dzIbt1jA8xd93Fy9bBbpztEKNbSwG5L1AcILO1YDDVfDdR6dSDHbxwIRXEDXCkuisFFNUEe7DpMUvTyMcPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737706884; c=relaxed/simple;
	bh=4JFiyfJgHxYZFT/BDOoSfi76/fqyI26c18HpzfUbnBM=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=rs2iFRi5Jd0PqePyNOB+r7WJ6N8xv4sIfQCXlGj6stIum/itLUWd4BhZwPytJDVpc8Ec1KnbZ7B8lYIIqikJbBoNqz5r/0VRSFG9AiciJKDiVjCBAzskTpzTxYc7wsKgjl2hofzUZzTpR3IQdZg+qMwQaypF2by+DXdRsuIewck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=PbUvk0YT; arc=none smtp.client-ip=198.47.19.246
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllvem-ot04.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 50O8Krnq517556
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 24 Jan 2025 02:20:53 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1737706853;
	bh=qg4nqqRog3lgOr1El9gq2s9gaKxMoQICwcFAPITA+9w=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=PbUvk0YT1o7a6Vqc2nAmpmAIGFIR82JNb8WC/M6ZBWPRON4e52GAiOHqiPb2v/MPU
	 5WFyEI09bQG2EYcXg/bJfR1lk64582pBRSLHwwgfcKUGJIR4osg8V4zcL4WZOz/4wk
	 LRDPLcyRvECBWx4RXliNF2KK57M1SVJiVYGLHXlg=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 50O8KriK123037
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 24 Jan 2025 02:20:53 -0600
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 24
 Jan 2025 02:20:53 -0600
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 24 Jan 2025 02:20:53 -0600
Received: from [10.24.68.181] (jayesh-hp-z2-tower-g5-workstation.dhcp.ti.com [10.24.68.181])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 50O8Klat007679;
	Fri, 24 Jan 2025 02:20:48 -0600
Message-ID: <4df0097f-2672-4bf0-8321-5922783e9278@ti.com>
Date: Fri, 24 Jan 2025 13:50:46 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: display: ti,am65x-dss: Add support for
 AM62L DSS
To: Devarsh Thakkar <devarsht@ti.com>, <jyri.sarha@iki.fi>,
        <tomi.valkeinen@ideasonboard.com>, <airlied@gmail.com>,
        <maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
        <tzimmermann@suse.de>, <dri-devel@lists.freedesktop.org>,
        <simona@ffwll.ch>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>
CC: <praneeth@ti.com>, <vigneshr@ti.com>, <aradhya.bhatia@linux.dev>,
        <s-jain1@ti.com>, <r-donadkar@ti.com>, <h-shenoy@ti.com>
References: <20241231090432.3649158-1-devarsht@ti.com>
 <20241231090432.3649158-2-devarsht@ti.com>
Content-Language: en-US
From: Jayesh Choudhary <j-choudhary@ti.com>
In-Reply-To: <20241231090432.3649158-2-devarsht@ti.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea

Hello Devarsh,

On 31/12/24 14:34, Devarsh Thakkar wrote:
> The DSS controller on TI's AM62L SoC is an update from that on TI's
> AM625/AM65x/AM62A7 SoC. The AM62L DSS [1] only supports a single display
> pipeline using a single overlay manager, single video port and a single
> video lite pipeline which does not support scaling.
> 
> The output of video port is routed to SoC boundary via DPI interface and
> the DPI signals from the video port are also routed to DSI Tx controller
> present within the SoC.
> 
> [1]: Section 11.7 (Display Subsystem and Peripherals)
> Link : https://www.ti.com/lit/pdf/sprujb4
> 
> Signed-off-by: Devarsh Thakkar <devarsht@ti.com>
> ---
>   .../bindings/display/ti/ti,am65x-dss.yaml     | 25 ++++++++++++++++++-
>   1 file changed, 24 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml b/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
> index 55e3e490d0e6..ba93c6bb02e8 100644
> --- a/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
> +++ b/Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml
> @@ -12,18 +12,29 @@ maintainers:
>     - Tomi Valkeinen <tomi.valkeinen@ti.com>
>   
>   description: |
> -  The AM625 and AM65x TI Keystone Display SubSystem with two output
> +  The AM625 and AM65x TI Keystone Display SubSystem has two output
>     ports and two video planes. In AM65x DSS, the first video port
>     supports 1 OLDI TX and in AM625 DSS, the first video port output is
>     internally routed to 2 OLDI TXes. The second video port supports DPI
>     format. The first plane is full video plane with all features and the
>     second is a "lite plane" without scaling support.
> +  The AM62A7 display subsystem has a single output port supporting DPI format
> +  although similar to AM625 and AM65x Socs, it has two video planes where first
> +  is full video plane with all features and second is a video "lite" plane which
> +  does not support scaling.
> +  The AM62L display subsystem also has a single output port which supports DPI
> +  format but it only supports single video "lite plane" which does not support
> +  scaling. The output port is routed to SoC boundary via DPI interface and same
> +  DPI signals are also routed internally to DSI Tx controller present within the
> +  SoC. Due to clocking limitations only one of the interface i.e. either DSI or
> +  DPI can be used at once.
>   
>   properties:
>     compatible:
>       enum:
>         - ti,am625-dss
>         - ti,am62a7,dss
> +      - ti,am62l,dss


s/ti,am62l,dss/ti,am62l-dss

There seems to be inconsistency in the usage of the compatible name in
the conditional below.

Same is with the compatible "ti,am62a7,dss".
Can you fix that too?


With the above comments addressed,

Reviewed-by: Jayesh Choudhary <j-choudhary@ti.com>


>         - ti,am65x-dss
>   
>     reg:
> @@ -91,6 +102,8 @@ properties:
>             For AM625 DSS, the internal DPI output port node from video
>             port 1.
>             For AM62A7 DSS, the port is tied off inside the SoC.
> +          For AM62L DSS, the DSS DPI output port node from video port 1
> +          or DSI Tx controller node connected to video port 1.
>   
>         port@1:
>           $ref: /schemas/graph.yaml#/properties/port
> @@ -123,6 +136,16 @@ allOf:
>           ports:
>             properties:
>               port@0: false
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: ti,am62l-dss
> +    then:
> +      properties:
> +        ports:
> +          properties:
> +            port@1: false
>   
>   required:
>     - compatible

Warm Regards,
Jayesh

