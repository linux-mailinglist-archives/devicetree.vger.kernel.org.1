Return-Path: <devicetree+bounces-262071-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kJubOH6VgWl/HAMAu9opvQ
	(envelope-from <devicetree+bounces-262071-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 07:28:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E70ED5390
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 07:28:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2706A303DF7E
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 06:26:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFCB23793A8;
	Tue,  3 Feb 2026 06:26:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Tg+mii1B";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="i/nVEaNU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5021E378830
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 06:26:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=205.220.180.131
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770099965; cv=pass; b=MpfKIeummzo185ujG/f4LDH/1KUr/tv7738Qg/pBVgnIxxRr+rG6SPz+HVdjasO6y4x0W/0ZCcv+CNIjVBwmAANn/yV2cBB1eSjwbBqgzfzGiiDrG5Pq6jEFuMM72GpowoF++XzRFnBgcKXQfDvEmHUfO+1JQM4zGFOJAMM1qzo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770099965; c=relaxed/simple;
	bh=oCphwJkdZe6LRMAUacVTeTswL+Mn6s2RohyxBsl0Bz4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FaNXdF1kjeC2zTCIf3466V7aG7LgUHHRp1KZa5R7wKJvOH5tKaJIyuvlcBKreT3ttjQU3TRVts5p2mTLM74ivY97ykdby0jdW9cIFbYu6iIV8E3fz8YuAydOgS7Er7w4deyczFFHZ8r2OekrPAF3uWz9Flvugq3dKiJ9hLu+upI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Tg+mii1B; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=i/nVEaNU; arc=pass smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61344uJm2998767
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 06:26:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lxOArcS/K+FXiz9EXMccDCt6XWeHK0YJMoVPhvlmBjM=; b=Tg+mii1BA3LKeit7
	5b0Ca4bGk13ukT+a7jMmZDb3Mh/6cLHfqVbbgNeVhkftJCXf1xApawDyaZTGFfnz
	WDf8HfJtq2AbrOAw6jXgZVEmkQE4GRNKGBvbj5gR/cL3KiccJXrscvQspMpKLQyz
	m73sAxUotw2qsvsD1cK9RplHRblGyWiupR/Qw/mP2qxp1xmSQnH8kyB7J9ageB9N
	QWTQ17hZPBQXNCNUU0ILJwDRogBcGDYNrjtpl7e5npksTVU6s2VaIUQ9ga2A8KQc
	JVU86UHoD2YzSxZCq9OXjeTlW7DNryfAWoDKOLO27VYOvyMVGfgHhgaFNxLflERy
	PQq7AA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2v0mawet-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 06:26:02 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8946198b977so146047746d6.0
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 22:26:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770099961; cv=none;
        d=google.com; s=arc-20240605;
        b=UsdXLOr9HmyomAwJJZhfJBo9lgXBJTY+C7oBzAYs5QZz/Pc1Iqr/dc/h5VvrMaXaKI
         EMW6fUPSlT61EIQ04WZrT5rYX8njNDw25lp3Wu6xOugpKLjWGF3eJ6l7l6SET6+m1qq2
         he9wg9JlXw4IhrQ5y68amgYjuodz2X8YpQQLQiCxFuUenZbjKD9buHF3GLgvVSAZcmy0
         5KRtHWrUaMoTGVA3MizbAW2FQSFKvhJhtfOQXdClAF7iEz75ZXz+cJuE1rXWH6OwHG8S
         9Zcqerm4qi2EgwSmOJs1RjqM27YXh/Vu+VUqcYomojRXa2c7RjBWZ3opzWeHlF3QzHRh
         LsKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=lxOArcS/K+FXiz9EXMccDCt6XWeHK0YJMoVPhvlmBjM=;
        fh=FvqKVSg4AGuC7FjomB99jfQcrqxvq5LOUHm0E4nrGBM=;
        b=apuiwjGip8ENEX0qQenWD6vr4Iw9vHxpMeYg2FpLL3/NJOi0qyANxqF0grAX5PEiqi
         55T3cBSBJnoJfGMOP7pzqD+vqJGYgQCdPnUTXl4RqO1O40B38U2TPcybbAVUjXeCgY6E
         +7mUVRB79XE7R/seULfq9mhhtwdR7hXZY87Q1hwoAnjtD4toosLWtG4m+GORHHTjt9+K
         YqOnpiTx2csOI2/76SkooZ24pdSvgym1OzIjGmLND1B601/Nxc7H+J6ZJbjg0z4kDSOb
         dniXsLzSz6xzsodRgODWqS/s2dsiXjddcq0PvGa9tgAfO6pW1WM4yVI5oel3KzAM1sdu
         26BA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770099961; x=1770704761; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lxOArcS/K+FXiz9EXMccDCt6XWeHK0YJMoVPhvlmBjM=;
        b=i/nVEaNUIXrp1cqOngI0drmcrCqMOZQzUfAdWp38i98KfZcZBy+q9GkdTaXp6ItDFt
         RXFFrGz4Nt1bwCH2vOJYoFHHFkSRAMLdVYz+YmisHoSbZspLjvy+wAAKgbT3jgdrwNOD
         Llt1PLshUU1mH8QMh+ZVDNRomW6yK/BcWA1IlVfgApSPxLZ29/1MV/rWAFaxNdICbSs9
         2o5DPEmug0CYwq74UmuN7+aMlk73IcYpG3uyLyjS4iYQAEYFheJHs1HK37FX8Ks5V2c1
         AuEF4JzxMF4iGJFdOq+GKCnw78bh+/d72txtX+G2g7rcPtukRga3vh8xLXfaivPgQ8rj
         lFxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770099961; x=1770704761;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lxOArcS/K+FXiz9EXMccDCt6XWeHK0YJMoVPhvlmBjM=;
        b=RQzZkGAYWVLuNEh8zigkeoaEWB5dmvIZM3clsZBm+dRzhzd9mZSoasaMTvrKxepcXl
         vtnSgCNL0rIWn+igwCg6425CJDBdR3mJYKCXJkv/o+S0mhPaW13nuXoo9x5/zirZN7EV
         4VSCriII9Afk0i3DWElKFatW7FeK7HFF4SpOoZAvfgkxik2X814G0OesvCpxXT++kaYH
         2unfgo5hk1dWBvJ/uDX8oV0Y4E3vpFBYvodKVdjiyw7dLB/UJ1eKGP2j5NPfbW00wyck
         b9HXnm/m/oQIIOElQKgKn50Wx+rqHEhidqA0MUMVQcpiTJZvxgOZFMcrZiO4qQVBsTwZ
         3PUQ==
X-Forwarded-Encrypted: i=1; AJvYcCWR/i050lUnhqJHrUo9rg7g2cRl6LWF/18WdGsm/iBWNvbdgAy7f4BijIANmniu9E1RBaAbtKpd9uGE@vger.kernel.org
X-Gm-Message-State: AOJu0YzP7PLRLIPKmojhDwyIlVH5s0wkxQ5v/6hmaNcZNLm+w9A34l89
	W5PQuwaj3ouWIOAXwmpKyQ3aS8UMe5lDi/9aH3LjIWXTjSy3jjf7aM7Bn4FEWi5rOG/mxUzyZxN
	U0gM8TqojETCiA7T9dG0stFAaaSlZtCaL/LRhb75QDr76y+Eyv3UtdDGhXIr0ih0XZBxSyl9cTd
	UzSSWx9XBG+jf+j+OUlvGBl78XRiFAvsopim9cIEY=
X-Gm-Gg: AZuq6aLUROebZAs3QylbO6mwf5q7YJaq8fItVYx59f12HffdG/nRduoywdKVUMDPeSX
	J7am9Wl7eyD5vFlDSK2aywjkMQkiRD+cYOi82kYB9Zgg9WuPVx505SZZ9f8ktVuHcNZeZlUDozM
	RvGNeKHJy/mwSfTzJt9GftNCCuKr6+U6oR7ZZ74OSAcCx0Jq/hSFdyLRioCMPA8B9jlK0k
X-Received: by 2002:ad4:5aa2:0:b0:894:5989:7f7f with SMTP id 6a1803df08f44-894e9f22938mr204179536d6.2.1770099961444;
        Mon, 02 Feb 2026 22:26:01 -0800 (PST)
X-Received: by 2002:ad4:5aa2:0:b0:894:5989:7f7f with SMTP id
 6a1803df08f44-894e9f22938mr204179376d6.2.1770099960916; Mon, 02 Feb 2026
 22:26:00 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260122092852.887624-1-swati.agarwal@oss.qualcomm.com>
 <20260122092852.887624-5-swati.agarwal@oss.qualcomm.com> <63fjxtcmpbpna4cuuis332y3p52b6pvh43gyg6m7u5kiwkb2pb@znwfyet4xlpc>
 <CAHz4bYuR_LZXh=tS2FJ4VE9tVB6vN10pd-9i=uOL35sSx_BRzg@mail.gmail.com>
In-Reply-To: <CAHz4bYuR_LZXh=tS2FJ4VE9tVB6vN10pd-9i=uOL35sSx_BRzg@mail.gmail.com>
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Date: Tue, 3 Feb 2026 11:55:49 +0530
X-Gm-Features: AZwV_Qi8kR_1ge01bIMHozVG-yFMgRlA2x3kGTlJscY_-zygtxRaWP7jyvUm7ZI
Message-ID: <CAHz4bYtX42FxSG6p+1K4JS3gQGiJDxduMvpghECch5j3Wcoj1g@mail.gmail.com>
Subject: Re: [PATCH v5 4/4] arm64: dts: qcom: lemans-evk: Enable secondary USB
 controller in host mode
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Icenowy Zheng <uwu@icenowy.me>,
        Matthias Kaehlcke <mka@chromium.org>,
        Mike Looijmans <mike.looijmans@topic.nl>,
        Stephen Boyd <swboyd@chromium.org>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Chaoyi Chen <chaoyi.chen@rock-chips.com>,
        =?UTF-8?B?SiAuIE5ldXNjaMOkZmVy?= <j.ne@posteo.net>,
        Pin-yen Lin <treapking@chromium.org>,
        Catalin Popescu <catalin.popescu@leica-geosystems.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Authority-Analysis: v=2.4 cv=dceNHHXe c=1 sm=1 tr=0 ts=698194fa cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=-HxOJJ4HDTbh8BZd8EEA:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: 0qI9lbXhhjcAg5Xsm9Pof-u-u30mWKoS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA0OCBTYWx0ZWRfX6r7CkV0tfB1V
 65yvl8UVrIJFClVAkx7dEx0eUwhPtZ5xFtpIe/QUYVOtOuFjXe9sPW/I0MwFNnKIF4JDofeptG3
 0bfMSVE3rnKmQ6A5U0bH0/R1dOuCPIcDW7yVbRECfNwajaQmdSVzGdcv0WntTRVmVcvBplhy5xD
 oz0FJbmF4iSEXKN9Az+xUJWBpl3PibTpn7raQjvv0bdKTGSAuzPU8yGy5uXKZuL6hlekM3vfii5
 +3Zc0/Jv6SEL2dBtYSlTn1zzxXLbOxWCHO2KoULcM9Yp5Ec2tHGHxRcbfGqsKzyvW1JAQyIUtZZ
 GVwlyh/EX2SP9jusJjHyctbLr6o1CFi+lP9yKOlIAAsJlqACsZdQq6hxrQ5UFxPTMpmHH4WZN7M
 a0cU9+NMnxa+2Odnp86N/lwxPSg2i+oLEDzK8tZMkkB+P6WmB8UhSlz75xJXOrNbHRI52Y73j6o
 syVKgwlUys3AyuDWp6A==
X-Proofpoint-ORIG-GUID: 0qI9lbXhhjcAg5Xsm9Pof-u-u30mWKoS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_02,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 impostorscore=0 adultscore=0 phishscore=0 bulkscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602030048
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262071-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[swati.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.3:email,0.0.0.47:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,0.0.0.2:email,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,0.0.0.1:email,0.0.0.4:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 5E70ED5390
X-Rspamd-Action: no action

On Tue, Jan 27, 2026 at 10:53=E2=80=AFAM Swati Agarwal
<swati.agarwal@oss.qualcomm.com> wrote:
>
> On Thu, Jan 22, 2026 at 4:02=E2=80=AFPM Dmitry Baryshkov
> <dmitry.baryshkov@oss.qualcomm.com> wrote:
> >
> > On Thu, Jan 22, 2026 at 02:58:52PM +0530, Swati Agarwal wrote:
> > > Enable secondary USB controller in host mode on lemans EVK Platform.
> > >
> > > Secondary USB controller is connected to a Genesys Logic USB HUB GL35=
90
> > > having 4 ports. The ports of hub that are present on lemans EVK stand=
alone
> > > board are used as follows:-
> > > 1) port-1 is connected to HD3SS3220 Type-C port controller.
> > > 2) port-4 is used for the M.2 E key on corekit. Standard core kit use=
s UART
> > > for Bluetooth. This port is to be used only if user optionally replac=
es the
> > > WiFi card with the NFA765 chip which uses USB for Bluetooth.
> > >
> > > Remaining 2 ports will become functional when the interface plus mezz=
anine
> > > board is stacked on top of corekit:
> > >
> > > 3) port-2 is connected to another hub which is present on the mezz th=
rough
> > > which 4 type-A ports are connected.
> > > 4) port-3 is used for the M.2 B key for a 5G card when the mezz is
> > > connected.
> > >
> > > Mark the second USB controller as host only capable and add the HD3SS=
3220
> > > Type-C port controller along with Type-c connector for controlling vb=
us
> > > supply.
> > >
> > > Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> > > ---
> > >  arch/arm64/boot/dts/qcom/lemans-evk.dts | 208 ++++++++++++++++++++++=
++
> > >  1 file changed, 208 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boo=
t/dts/qcom/lemans-evk.dts
> > > index 074a1edd0334..a549f7fe53a1 100644
> > > --- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
> > > +++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> > > @@ -68,6 +68,45 @@ usb0_con_ss_ep: endpoint {
> > >               };
> > >       };
> > >
> > > +     connector-1 {
> > > +             compatible =3D "usb-c-connector";
> > > +             label =3D "USB1-Type-C";
> > > +             data-role =3D "host";
> > > +             power-role =3D "source";
> > > +
> > > +             vbus-supply =3D <&vbus_supply_regulator_1>;
> > > +
> > > +             ports {
> > > +                     #address-cells =3D <1>;
> > > +                     #size-cells =3D <0>;
> > > +
> > > +                     port@0 {
> > > +                             reg =3D <0>;
> > > +
> > > +                             usb1_con_ss_ep: endpoint {
> >
> > This contradicts USB-C connector bindings. Why?
> >
> > > +                                     remote-endpoint =3D <&hd3ss3220=
_1_in_ep>;
> > > +                             };
> > > +                     };
> > > +
> > > +                     port@1 {
> > > +                             reg =3D <1>;
> > > +
> > > +                             usb1_hs_in: endpoint {
> > > +                                     remote-endpoint =3D <&usb_hub_2=
_1>;
> > > +                             };
> > > +
> > > +                     };
> > > +
> > > +                     port@2 {
> > > +                             reg =3D <2>;
> > > +
> > > +                             usb1_ss_in: endpoint {
> >
> > port@2 is for the SBU signals. It can't be connected to the hub.
> >
> > > +                                     remote-endpoint =3D <&usb_hub_3=
_1>;
> > > +                             };
> > > +                     };
> > > +             };
> > > +     };
> > > +
> > >       edp0-connector {
> > >               compatible =3D "dp-connector";
> > >               label =3D "EDP0";
> > > @@ -141,6 +180,16 @@ vbus_supply_regulator_0: regulator-vbus-supply-0=
 {
> > >               enable-active-high;
> > >       };
> > >
> > > +     vbus_supply_regulator_1: regulator-vbus-supply-1 {
> > > +             compatible =3D "regulator-fixed";
> > > +             regulator-name =3D "vbus_supply_1";
> > > +             gpio =3D <&expander1 3 GPIO_ACTIVE_HIGH>;
> > > +             regulator-min-microvolt =3D <5000000>;
> > > +             regulator-max-microvolt =3D <5000000>;
> > > +             regulator-boot-on;
> > > +             enable-active-high;
> > > +     };
> > > +
> > >       vmmc_sdc: regulator-vmmc-sdc {
> > >               compatible =3D "regulator-fixed";
> > >
> > > @@ -536,6 +585,39 @@ hd3ss3220_0_out_ep: endpoint {
> > >                       };
> > >               };
> > >       };
> > > +
> > > +     usb-typec@47 {
> > > +             compatible =3D "ti,hd3ss3220";
> > > +             reg =3D <0x47>;
> > > +
> > > +             interrupts-extended =3D <&pmm8654au_2_gpios 6 IRQ_TYPE_=
EDGE_FALLING>;
> > > +
> > > +             id-gpios =3D <&tlmm 51 GPIO_ACTIVE_HIGH>;
> > > +
> > > +             pinctrl-0 =3D <&usb1_id>, <&usb1_intr>;
> > > +             pinctrl-names =3D "default";
> > > +
> > > +             ports {
> > > +                     #address-cells =3D <1>;
> > > +                     #size-cells =3D <0>;
> > > +
> > > +                     port@0 {
> > > +                             reg =3D <0>;
> > > +
> > > +                             hd3ss3220_1_in_ep: endpoint {
> > > +                                     remote-endpoint =3D <&usb1_con_=
ss_ep>;
> > > +                             };
> > > +                     };
> > > +
> > > +                     port@1 {
> > > +                             reg =3D <1>;
> > > +
> > > +                             hd3ss3220_1_out_ep: endpoint {
> > > +                             };
> >
> > Why is this port disconnected? It it really N/C?
>
> Hi Dmitry,
>
> Sorry for the confusion, Can we do it as follows:
>
> hub:                    Hd3ss3220   typec-connector
>
> usb_hub_2_1 <-> port@1       port@1 <-> empty
> usb_hub_3_1 <-> port@2       port@2 <-> <empty>
>                              port@0 <-> port@0
>
> Regards,
> Swati

Hi Dmitry,

Gentle ping.
Let me know if the above remote endpoint connections look good to go.

Regards,
Swati


> >
> > > +                     };
> > > +             };
> > > +     };
> > > +
> > >  };
> > >
> > >  &i2c18 {
> > > @@ -699,6 +781,14 @@ usb0_intr_state: usb0-intr-state {
> > >               bias-pull-up;
> > >               power-source =3D <0>;
> > >       };
> > > +
> > > +     usb1_intr: usb1-intr-state {
> > > +             pins =3D "gpio6";
> > > +             function =3D "normal";
> > > +             input-enable;
> > > +             bias-pull-up;
> > > +             power-source =3D <0>;
> > > +     };
> > >  };
> > >
> > >  &qup_i2c19_default {
> > > @@ -868,6 +958,12 @@ usb_id: usb-id-state {
> > >               function =3D "gpio";
> > >               bias-pull-up;
> > >       };
> > > +
> > > +     usb1_id: usb1-id-state {
> > > +             pins =3D "gpio51";
> > > +             function =3D "gpio";
> > > +             bias-pull-up;
> > > +     };
> > >  };
> > >
> > >  &uart10 {
> > > @@ -922,6 +1018,118 @@ &usb_0_qmpphy {
> > >       status =3D "okay";
> > >  };
> > >
> > > +&usb_1 {
> > > +     dr_mode =3D "host";
> > > +
> > > +     #address-cells =3D <1>;
> > > +     #size-cells =3D <0>;
> > > +
> > > +     status =3D "okay";
> > > +
> > > +     usb_hub_2_x: hub@1 {
> > > +             compatible =3D "usb5e3,610";
> > > +             reg =3D <1>;
> > > +
> > > +             peer-hub =3D <&usb_hub_3_x>;
> > > +
> > > +             ports {
> > > +                     #address-cells =3D <1>;
> > > +                     #size-cells =3D <0>;
> > > +
> > > +                     port@1 {
> > > +                             reg =3D <1>;
> > > +
> > > +                             usb_hub_2_1: endpoint {
> > > +                                     remote-endpoint =3D <&usb1_hs_i=
n>;
> > > +                             };
> > > +                     };
> > > +
> > > +                     /*
> > > +                      * Port-2 and port-3 are not connected to anyth=
ing on corekit.
> >
> > I thought that they are routed to the HS connectors. Are they not?
> >
> > > +                      */
> > > +                     port@2 {
> > > +                             reg =3D <2>;
> > > +
> > > +                             usb_hub_2_2: endpoint {
> > > +                             };
> > > +                     };
> > > +
> > > +                     port@3 {
> > > +                             reg =3D <3>;
> > > +
> > > +                             usb_hub_2_3: endpoint {
> > > +                             };
> > > +                     };
> > > +
> > > +                     /*
> > > +                      * Port-4 is connected to M.2 E key connector o=
n corekit.
> > > +                      */
> > > +                     port@4 {
> > > +                             reg =3D <4>;
> > > +
> > > +                             usb_hub_2_4: endpoint {
> > > +                             };
> > > +                     };
> > > +             };
> > > +     };
> > > +
> > > +     usb_hub_3_x: hub@2 {
> > > +             compatible =3D "usb5e3,625";
> > > +             reg =3D <2>;
> > > +
> > > +             peer-hub =3D <&usb_hub_2_x>;
> > > +
> > > +             ports {
> > > +                     #address-cells =3D <1>;
> > > +                     #size-cells =3D <0>;
> > > +
> > > +                     port@1 {
> > > +                             reg =3D <1>;
> > > +
> > > +                             usb_hub_3_1: endpoint {
> > > +                                     remote-endpoint =3D <&usb1_ss_i=
n>;
> > > +                             };
> > > +                     };
> > > +
> > > +                     port@2 {
> > > +                             reg =3D <2>;
> > > +
> > > +                             usb_hub_3_2: endpoint {
> > > +                             };
> > > +                     };
> > > +
> > > +                     port@3 {
> > > +                             reg =3D <3>;
> > > +
> > > +                             usb_hub_3_3: endpoint {
> > > +                             };
> > > +                     };
> > > +
> > > +                     port@4 {
> > > +                             reg =3D <4>;
> > > +
> > > +                             usb_hub_3_4: endpoint {
> > > +                             };
> > > +                     };
> > > +             };
> > > +     };
> > > +};
> > > +
> > > +&usb_1_hsphy {
> > > +     vdda-pll-supply =3D <&vreg_l7a>;
> > > +     vdda18-supply =3D <&vreg_l6c>;
> > > +     vdda33-supply =3D <&vreg_l9a>;
> > > +
> > > +     status =3D "okay";
> > > +};
> > > +
> > > +&usb_1_qmpphy {
> > > +     vdda-phy-supply =3D <&vreg_l1c>;
> > > +     vdda-pll-supply =3D <&vreg_l7a>;
> > > +
> > > +     status =3D "okay";
> > > +};
> > > +
> > >  &xo_board_clk {
> > >       clock-frequency =3D <38400000>;
> > >  };
> > > --
> > > 2.34.1
> > >
> >
> > --
> > With best wishes
> > Dmitry

