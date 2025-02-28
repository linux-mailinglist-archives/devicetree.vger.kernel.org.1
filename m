Return-Path: <devicetree+bounces-152432-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A0FEA4914D
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 07:06:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D9B96188F52E
	for <lists+devicetree@lfdr.de>; Fri, 28 Feb 2025 06:06:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A8571C1F05;
	Fri, 28 Feb 2025 06:06:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VqqStP43"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7221ADC9D
	for <devicetree@vger.kernel.org>; Fri, 28 Feb 2025 06:06:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740722780; cv=none; b=cuFbrajfMGKOeMGHSon+Hy4o0NZPNe1phc9Ry2ohxdkHoDno9TkkkZm+IL9M2jzveLYo1SlXiUBhyt8zYNS3xtB1Q1PR2idZa9anXGJTxVYTRt1dIgwDlO84/OAdq3uBMLf7hXsWwe4vpJNLMyDiNlXfi/JT2nGqYSoDwZxOmIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740722780; c=relaxed/simple;
	bh=JqusIMvVL0UFmx1UCVfD1GhzK+cvCugHV/vJBworDMw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ik+ix823VWl9v3XHIC1lF1ldgSEj32DRlr6+GtTTtALtQ+sZvNrenaHYuTrIERAEkJUgInGWb7dZd5x3SogdohcqOutVdqRpP7yr2XFlIbD2wwj8Lu+KN6cmmn1smJHrA124A/x8kSaIDHtxmg3xzt3Dt9DSutdUaSuDNrt9Klg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VqqStP43; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5452e6f2999so1698252e87.3
        for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 22:06:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740722776; x=1741327576; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=br1sUID2XECp78Ip2pAJh/qbxtPKzeVh8yZz/p0eCOk=;
        b=VqqStP43+2dIEtaRlrHjlv4DDdwOZ8MvJ++Eyf6wIG60wAT3LxESMPZusoCU5flnAD
         VPw7yo23gIJBRDshlsiBiUdhkjI1K7GrS52XJTYhL4fEGo009toLPmK4Rh5csAVfX46S
         dzczoV+G6czfF9Ux+Rhu1zs+b/OY25QyR+AX26rSa+i/esdKXmOl4kaIbE+KYzfHRH1a
         keYUPdB1LDiICj+s0OlX5tpVW/l5YALY5z9AfEbJxnrHrE3+maKYVRl6XsYBI2Y9O5Ax
         2AxUkbwKYOEBgvNTHpE4ac3NOiRtkBaV73Rak48mI8NYd35ZpVFQsQLua60DrForZ/VB
         xCLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740722776; x=1741327576;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=br1sUID2XECp78Ip2pAJh/qbxtPKzeVh8yZz/p0eCOk=;
        b=quc6kqm2svFZ9Z4nUB9dNHTVDWjQhBNXFX8frF4EEd3vmmcyC0DHJcnWXIfpc7pXEA
         YulMgQGmU/bz2kTqm+1yXnxDbhhU9DHpqv6dtfGO5nV2Bf8QMo+qae1GyjCaYYewR4O/
         sAmsjPdYWsoBpF82KknJ760GSlgKLr5WjHs7DuE1FWaevQee4BSkWRGH7zTjV8Be4n46
         hKWDVblzIZH2mF7fJqGbhJS4k9vgnnr6R5N65X8q8BfTUuROwdFh/ETd4cjz5XseQu3L
         sEKtAThARR4zv71dX6JMI99N7Q640f5Wz929vpWgX0FzbeuHMG41RnXUYUb2K3JGgLH7
         0Pyg==
X-Forwarded-Encrypted: i=1; AJvYcCXXa7PcNl5XkX5JMnYMKZXQ89ksdBeffobPzb1XvJeNLYNMAj+IfVzd4lFgsKne9piXBcWK65PTGze8@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7PusWJnpIvpzzz/aGX5or1T+ZRx+LyzBGWKckcKR03VOsGAo4
	g4jsW6EsCeJVwLJrrZMaYP3PvuSasBVx4hL25hUWcychUgAcM11MP2OgdRTK5hI=
X-Gm-Gg: ASbGncskCUBtSqdGyQww2QtK5h9gg/F8bClq9oLaZffDtjXNr98MLdp/vnnSR2wweTs
	KCKPq6DlM/IcBGbPuq1SqbkxPRTL34CtMQRLWgXG5HhRzIzYC2HQTzY4ytu9k48OW15i5ThDFcM
	4hDqextjFGXcSOoNN/RIZwDDhJIPwEAhZcfTpidV2LQ78isgt+FJJMXQKXOLd0U72BAazE9AMYg
	YDEaP6VwyiJWAR6r2a2at4xSkC1qwDpLn1dbpyNv8pQUuvQA1QrIbnY2uTriFnExHNduyDpJkLF
	QuJVq0Ws9VPfGua5mAAuw8ZOv3bBwmU4dAtUJ73bZiplrelUgi30/VYE+4v4mFiwtmQ0FbgL5Bd
	UgEtZsA==
X-Google-Smtp-Source: AGHT+IE4qQn9kKkpyN7ObLIhf4a/RYfZo/3gs6I48/5OZv4eBm789sqVDGis5DXi+FZ8ZgIqAP7Rog==
X-Received: by 2002:a05:6512:114b:b0:545:3032:91fd with SMTP id 2adb3069b0e04-5494c3282c2mr986947e87.16.1740722776122;
        Thu, 27 Feb 2025 22:06:16 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549443be5c1sm386975e87.175.2025.02.27.22.06.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2025 22:06:14 -0800 (PST)
Date: Fri, 28 Feb 2025 08:06:12 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sricharan R <quic_srichara@quicinc.com>
Cc: jassisinghbrar@gmail.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, andersson@kernel.org, konradybcio@kernel.org, 
	manivannan.sadhasivam@linaro.org
Subject: Re: [PATCH V3 1/2] dt-bindings: mailbox: Document qcom,tmel-qmp
Message-ID: <velvqajyhrdaipmqmsduv3l3dsv56sy4rfukwm2hrdvh47hgqx@7sbnrgkzsn67>
References: <20250228045356.3527662-1-quic_srichara@quicinc.com>
 <20250228045356.3527662-2-quic_srichara@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250228045356.3527662-2-quic_srichara@quicinc.com>

On Fri, Feb 28, 2025 at 10:23:55AM +0530, Sricharan R wrote:
> From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> 
> TMEL SS provides different kinds of services like secureboot, remote image

What is TMEL SS? What is Q6, etc? Please provide a definition on the
first usagem both in the commit message and in the bindings text. And in
the cover letter. Also, in some places you use TME-L instead of TMEL.
Please settle on one of those, unless there is a difference between
them,

> authentication, key management, crypto, OEM provisioning etc. This patch
> adds support for remote image authentication. Support for rest of the
> services can be added.
> 
> The QMP mailbox is the primary means of communication between TMEL SS and
> other subsystem on the SoC. A dedicated pair of inbound and outbound
> mailboxes is implemented for each subsystem/external execution environment
> which needs to communicate with TMEL for security services. The inbound
> mailboxes are used to send IPC requests to TMEL, which are then processed
> by TMEL firmware and accordingly the responses are sent back via outbound
> mailboxes.
> 
> It is an IPC transport protocol which is light weight and supports a subset
> of API's. It handles link initialization, negotiation, establishment and
> communication across client(CPU/BTSS/AUDIOSS) and server(TMEL SS).
> 
>    -----------------------------------------------       ---------------------------------------------------
>   |                                              |       |                                                 |
>   |                 SOC  CLIENT                  | SOC   |                TMEL  SS                         |
>   |                                              | AHB   |                                                 |
>   |     ----------    ---------   ---------      |       | ------    -------     --------    ------------  |
>   |     |        |    |       |   |       |      | WO    | |     | R |     |     |      |    |SERVICES   | |
>   |     | CPU    |<-->| TMEL  |<->|       |------------->| | IN  |-->|     |     | TMEL |    |--------   | |
>   |     |        |    | COM   |   | QMP   |      | RO    | |     | W | QMP |<--->| COM  |<-->| a) ATTEST | |
>   |     |        |    |       |   |       |<-------------| | OUT |<--|     |     |      |    | b) CRYPTO | |
>   |     |        |    |       |   |       |      |       | |     |   |     |     |      |    | .. more   | |
>   |     ---------     ---------   ---------      |       | ------    -------     -------     ------------  |
>   |                                              |       |                                                 |
>    -----------------------------------------------       --------------------------------------------------
> 
> This binding describes the component responsible for communication between
> the TMEL server based subsystems (Q6) and the TMEL client
> (CPU/BTSS/AUDIOSS), used for security services like secure image
> authentication, enable/disable efuses, crypto services. Each client in the
> SoC has its own block of message RAM and IRQ for communication with the
> TMEL SS.
> 
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> ---
> #V3:

Creative. Where are the previous changelogs?

> ---
>         Fixed wrappings.
>         Made mailbox-cells as a required property and changed value to '1'.
>         Fixed to use compatible as filename.
>         Renamed compatible as per Krzystof's comments.
>         Dropped unused label.
> 
>     Following tests were done and no issues.
> 
>        *)  Checkpatch
>        *)  Codespell
>        *)  Sparse
>        *)  kerneldoc check
>        *)  Kernel lock debugging
>        *)  dt_binding_check and dtbs_check
> 
>  .../bindings/mailbox/qcom,ipq5424-tmel.yaml   | 62 +++++++++++++++++++
>  1 file changed, 62 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mailbox/qcom,ipq5424-tmel.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mailbox/qcom,ipq5424-tmel.yaml b/Documentation/devicetree/bindings/mailbox/qcom,ipq5424-tmel.yaml
> new file mode 100644
> index 000000000000..2e3c79add405
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mailbox/qcom,ipq5424-tmel.yaml
> @@ -0,0 +1,62 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mailbox/qcom,ipq5424-tmel.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm TMEL IPCC channel
> +
> +maintainers:
> +  - Sricharan Ramabadhran <quic_srichara@quicinc.com>
> +
> +description:
> +  TMEL SS provides different kinds of services like secureboot, remote image authentication,
> +  key management, crypto, OEM provisioning etc. This patch adds support for remote image
> +  authentication. Support for rest of the services can be added.
> +
> +  The QMP mailbox is the primary means of communication between TMEL SS and other subsystem on
> +  the SoC. A dedicated pair of inbound and outbound mailboxes is implemented for each
> +  subsystem/external execution environment which needs to communicate with TMEL for security
> +  services. The inbound mailboxes are used to send IPC requests to TMEL, which are then processed

This string is 100 chars long. What is the recommended wrapping
boundary?

> +  by TMEL firmware and accordingly the responses are sent back via outbound mailboxes.
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - qcom,ipq5424-tmel
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  mboxes:
> +    maxItems: 1
> +
> +  "#mbox-cells":
> +    const: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - mboxes
> +  - "#mbox-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    mailbox@32090000 {
> +        compatible = "qcom,ipq5424-tmel";
> +        reg = <0x32090000 0x2000>;
> +        interrupts = <GIC_SPI 126 IRQ_TYPE_EDGE_RISING>;
> +        mboxes = <&apcs_glb 20>;
> +        #mbox-cells = <1>;
> +    };
> +
> +...
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

