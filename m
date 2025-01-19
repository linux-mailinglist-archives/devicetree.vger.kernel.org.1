Return-Path: <devicetree+bounces-139557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 34936A1629C
	for <lists+devicetree@lfdr.de>; Sun, 19 Jan 2025 16:25:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 55D3F3A5128
	for <lists+devicetree@lfdr.de>; Sun, 19 Jan 2025 15:25:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A6531DF740;
	Sun, 19 Jan 2025 15:25:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="d4Pkol1d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A56A1DF27D
	for <devicetree@vger.kernel.org>; Sun, 19 Jan 2025 15:25:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737300344; cv=none; b=mPHk3epGZt4iIrJzy9j0CFyLDLTpbOMegebkFaNepOslPeVbcC2Oa8TDTTsak52i7eRgCeaY5CIsfm0srJWhEEfJkq4CPeBtbWpjuzA5jeKV3Inbfcfdcv0NrNTNJ7hJtAYAtE0fdOYf1wmvXF2xaxcUtiE+/XQCj+NzpKKSuBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737300344; c=relaxed/simple;
	bh=Cy+qEt2NXA08rztWXxtWOUDQnA+zPs8tkSV/b/YP8cg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ABFheJLZGrTW+Q6y91RjZ2svWiB1xlxUjkOI6EBa3mqeUvebBDcFs077DoEnI9R6Pywy1/H3ygxFSuFYYh+mpyD9dpBljL+o3V6WDSY+Oty6e7Uvk5tI+Pl8b1ZjhnlmI7s3c62ELdImKIimljiWEIPlrpttloxu76UpWq5YG7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=d4Pkol1d; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2166651f752so86100925ad.3
        for <devicetree@vger.kernel.org>; Sun, 19 Jan 2025 07:25:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737300342; x=1737905142; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/Xaz6uw75PCkZ9efkLrpzdDAN7b8HSpOlZoyxfAfNzA=;
        b=d4Pkol1dokuOH1MaNAvFMBMBooHtTRQ9Ysh3eHP43FUrR+2juI4Uk2/KRkKTV/Jkoa
         02qE9NKcRqMGR0F8VMDIXCdW1u7CSwG2pCeDlHsl/sPvzCvYYSLTC5nsaitlpp3GGRhp
         HfwycpvJfp1jigJXKYAA+NtiC5jEW4eVtPn1hVtIKfRvemxqH4lqXPl7R8fKQOdzoUZ2
         UBqdn0P2N4JwYL5mOVCXVBQbY6HdsIASDYtPy4mb/LchFBMnsPDR57xVAUkWJ1mC60BO
         q0/EDPwFg2NzoD4UEXFnlb+jBkpcHcjBH9ZIkrfMA4bDTuWWrzQPZyMQHmZZ13YJZPes
         nhsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737300342; x=1737905142;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/Xaz6uw75PCkZ9efkLrpzdDAN7b8HSpOlZoyxfAfNzA=;
        b=Wc1bPxzQF030gQf/dTuewQ6xCEAkE84WuVkaJK4bwYxhjQhsNJ7+fvyRPC2M04J6aW
         zaetePYfnQTVQjoGnAYn+Z4S3W9Vy60HP7VAEtqWdw855DhoNyHB5J4YCUPngKyasSve
         RYGfnojJx9yxYppI9C389xq3VdE3Warb4g0WEpHNYm/m50ySOxnYxkN9Zm3w0gxFjF3t
         XqI3R6Ug/LpOZ9VU8JHXUuts1jgMXhzjfQ16i0IdP8vbVEPC8ywXA4WBYujH1ZkBoTjB
         m5ggKid8j0kLovVjB7jik5gwcjqw9XhPU0CltgMZII76KhVubGBRvO4BAhOzuWq25VAa
         ouFA==
X-Forwarded-Encrypted: i=1; AJvYcCWc8N8Qgb0M29Su0tXR7DeZL7fpFAFqSlW9mqBN8M4SY9FI81ZrE6uRK5hYbfkUzXgQ5o531GJQ7U/W@vger.kernel.org
X-Gm-Message-State: AOJu0YxvkhwqkKg9EAmtXidMpRz8JxvBguYU8Gsz5Bq+Ns3DAxePeTID
	K4g/92E5QvTmV3KNpv+at1m5B3o6AfsHQi/iU5yqPCESU4bBQkJrOzyPNI4bsQ==
X-Gm-Gg: ASbGncvM3PpnptFV7EtIDzOFEsUupxHKRX1QqkYSswjDQI+FMDUDRWZq1idKpkCg3JG
	816X6QR9QKgSuo6Qep6/+xHiSZQaEDHcQFhKzDPuuwAxBGkGtcwMMK4bGDJt9sjEXCUT5MHLJhm
	pZn+5FgIAUQlB5JWTn9BDTLCH+WBkj5ZMqWI6GAdVBhVD/Hc6gpbEOll0zz3OxK8sUaAaHr97GX
	eYgIZnaFBJALjOK/5iXc7KsN7lZBXA/Hx1gWoffcnCgDC32fs+5KvDqfz3XpXm4DeuD3wi7OxeP
	QbYOAw==
X-Google-Smtp-Source: AGHT+IFwl8xnvKB2lpUjrtIYdeNsW1GvDBlcIZmazybTfoK6NpRu6tzeYc5RWcWJiKkCBQ9HdBR63w==
X-Received: by 2002:a05:6a20:2585:b0:1d8:a9c0:8853 with SMTP id adf61e73a8af0-1eb214b22c8mr14523957637.23.1737300341700;
        Sun, 19 Jan 2025 07:25:41 -0800 (PST)
Received: from thinkpad ([120.56.195.253])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72dab9c8e37sm5275988b3a.119.2025.01.19.07.25.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jan 2025 07:25:41 -0800 (PST)
Date: Sun, 19 Jan 2025 20:55:34 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>, Rob Herring <robh@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	=?utf-8?B?TsOtY29sYXMgRi4gUi4gQS4=?= Prado <nfraprado@collabora.com>
Subject: Re: [PATCH v2 01/21] arm64: dts: qcom: sm8250: Add PCIe bridge node
Message-ID: <20250119152534.d6berucbb2wbbi3z@thinkpad>
References: <20250115175918.2isv2at337cfgvjd@thinkpad>
 <20250115181340.GA539092@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250115181340.GA539092@bhelgaas>

On Wed, Jan 15, 2025 at 12:13:40PM -0600, Bjorn Helgaas wrote:
> On Wed, Jan 15, 2025 at 11:29:18PM +0530, Manivannan Sadhasivam wrote:
> > On Wed, Jan 15, 2025 at 11:42:10AM -0600, Bjorn Helgaas wrote:
> > > On Wed, Jan 15, 2025 at 04:24:31PM +0530, Manivannan Sadhasivam wrote:
> > > > On Mon, Jan 06, 2025 at 05:07:05PM -0600, Bjorn Helgaas wrote:
> > > > > On Sun, Jan 05, 2025 at 03:46:12PM +0530, Manivannan Sadhasivam wrote:
> > > > > > On Fri, Jan 03, 2025 at 03:05:31PM -0600, Bjorn Helgaas wrote:
> > > > > > > On Thu, Mar 21, 2024 at 04:46:21PM +0530, Manivannan Sadhasivam wrote:
> > > > > > > > On Qcom SoCs, the PCIe host bridge is connected to a single PCIe bridge
> > > > > > > > for each controller instance. Hence, add a node to represent the bridge.
> > > > > > > > 
> > > > > > > > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > > > > > > > ---
> > > > > > > >  arch/arm64/boot/dts/qcom/sm8250.dtsi | 30 ++++++++++++++++++++++++++++++
> > > > > > > >  1 file changed, 30 insertions(+)
> > > > > > > > 
> > > > > > > > diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> > > > > > > > index 39bd8f0eba1e..fe5485256b22 100644
> > > > > > > > --- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
> > > > > > > > +++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> > > > > > > > @@ -2203,6 +2203,16 @@ pcie0: pcie@1c00000 {
> > > > > > > >  			dma-coherent;
> > > > > > > >  
> > > > > > > >  			status = "disabled";
> > > > > > > > +
> > > > > > > > +			pcie@0 {
> > > > > > > > +				device_type = "pci";
> > > > > > > > +				reg = <0x0 0x0 0x0 0x0 0x0>;
> > > > > > > > +				bus-range = <0x01 0xff>;
> > > > > > > 
> > > > > > > Hi Mani, most or all of the patches in this series add this
> > > > > > > "bus-range" property.  IIUC, these are all Root Ports and hence the
> > > > > > > secondary/subordinate bus numbers should be programmable.
> > > > > > 
> > > > > > Right. It is not a functional dependency.
> > > > > > 
> > > > > > > If that's the case, I don't think we need to include "bus-range" in DT
> > > > > > > for them, do we?
> > > > > > 
> > > > > > We mostly include it to silence the below bindings check for the
> > > > > > endpoint device node:
> > > > > > 
> > > > > > Warning (pci_device_bus_num): /soc@0/pcie@1c00000/pcie@0/wifi@0: PCI bus number 1 out of range, expected (0 - 0)
> > > > > > 
> > > > > > DTC check is happy if the 'bus-range' property is absent in the
> > > > > > bridge node. But while validating the endpoint node (if defined), it
> > > > > > currently relies on the parent 'bus-range' property to verify the
> > > > > > bus number provided in the endpoint 'reg' property.
> > > > > > 
> > > > > > I don't know else the check can verify the correctness of the
> > > > > > endpoint bus number. So deferring to Rob here.
> > > > > 
> > > > > I should know more about how this works in DT, but I don't.
> > > > > 
> > > > > I guess https://git.kernel.org/linus/83d2a0a1e2b9 ("arm64: dts: qcom:
> > > > > sm8250: Add PCIe bridge node") added this (subsequently renamed to
> > > > > "pcieport0"):
> > > > > 
> > > > >   +			pcie@0 {
> > > > >   +				device_type = "pci";
> > > > >   +				reg = <0x0 0x0 0x0 0x0 0x0>;
> > > > >   +				bus-range = <0x01 0xff>;
> > > > > 
> > > > > which is used at places like
> > > > > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts?id=v6.12#n788:
> > > > > 
> > > > >   &pcieport0 {
> > > > > 	  wifi@0 {
> > > > > 		  compatible = "pci17cb,1101";
> > > > > 		  reg = <0x10000 0x0 0x0 0x0 0x0>;
> > > > > 
> > > > > Based on
> > > > > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/pci/pci.txt?id=v6.12#n46
> > > > > (which is written for Root Ports and Switch Ports, but presumably
> > > > > applies to endpoints like wifi as well), "reg" contains the device's
> > > > > bus/device/function:
> > > > > 
> > > > >   - reg:
> > > > >      Identifies the PCI-PCI bridge. As defined in the IEEE Std 1275-1994
> > > > >      document, it is a five-cell address encoded as (phys.hi phys.mid
> > > > >      phys.lo size.hi size.lo). phys.hi should contain the device's BDF as
> > > > >      0b00000000 bbbbbbbb dddddfff 00000000. The other cells should be zero.
> > > > > 
> > > > > So 0x10000 would decode to 01:00.0, which matches the <1 1> bus-range.
> > > > > 
> > > > > I don't know the reason for requiring the BDF there, but the venerable
> > > > > https://www.devicetree.org/open-firmware/bindings/pci/pci2_1.pdf, sec
> > > > > 4.1.1, says "reg" is mandatory for PCI Child Nodes, and the first
> > > > > entry must be the config space address (bus/device/function).
> > > > > 
> > > > > I suppose maybe the BDF is needed to associate the properties with the
> > > > > correct device, and if the OS were to reprogram the bridge secondary
> > > > > bus number, it would have to remember the original value to preserve
> > > > > this association.  I don't think Linux *does* remember that, but it
> > > > > also generally leaves the bridge bus numbers alone.
> > > > 
> > > > Device drivers need to parse the properties defined in the device DT
> > > > node. And the only way to identify the node is by using its 'reg'
> > > > property which has the BDF identifier. This is common to other
> > > > busses where the device address is encoded in the 'reg' property.
> > > 
> > > Does this assume there is some firmware to configure these bridges
> > > before Linux boots?
> > 
> > No.
> > 
> > >  If bridges are completely unconfigured after
> > > power-on, their secondary and subordinate bus numbers will be zero, so
> > > a bus-range property for the bridge can only be an assumption about
> > > what Linux will do.
> > 
> > Secondary bus number for sure is not an assumption as it depends on
> > the hardware topology which linux would know from DT. But
> > subordinate number could be considered as an assumption.
> 
> If there's no firmware and the secondary bus number is 0 when Linux
> enumerates the bridge, does Linux know how to get the bus-range from
> DT and program the bridge's secondary bus?
> 

Linux doesn't seem to make use of the secondary bus number from DT node of a
bridge, but there is no guarantee that other OSes making use of DT won't do.

> And does Linux know how to update the subordinate bus number in the
> case where several Root Ports specify 0xff in bus-range?
> 

Same answer as above.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

