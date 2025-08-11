Return-Path: <devicetree+bounces-203191-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 41729B204E0
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 12:06:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2CCA87A69A9
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 10:04:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E5B221D3CD;
	Mon, 11 Aug 2025 10:06:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="H7wNvcmx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04EF220298E
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 10:06:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754906770; cv=none; b=gJ3cYPfzqDMThyhT7xuxgm0an5nwiTK770GQf5Uv/hco60kPKE8gvgqWSUn3GpQc8qvnH9l4v4ogpQghh7jCIjupfkoquLe/b3tJgc65RPuaQum7fuZmWBSKlTMzj4CRpkwKzokCAlYtf2JJZVGjJsJqhyy/jlmL/8cKkovSBWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754906770; c=relaxed/simple;
	bh=10ApFl6TQUysMY2QfW7/N2xTtY4LUe/cSjyKPP+pkb8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=q8v6Q1D5iEBFUUT+Zy2kKe4e0xdck2dEKDyQPOYax0h80WNWy+6C1dc/sU7hIgEIKA1h7NcWCLZqkk5oyUMrJgMHIx3F0pl9ebzQSFKSZAT17n9mpy8URfsdTOCEgHugxox3LZY1KfyeOhENryvRXgRsHKKsvXz4pvZa0q7RngY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=H7wNvcmx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57B9dEWJ007688
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 10:06:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TZ/dceqjtDi5aPbykVkxqjO86bUfZyp7+P+A+wh4Mr0=; b=H7wNvcmxZMObfY4f
	8ZP1+dR0ATH95Yswyd74eOfO0A9mr8DWbfAVaM6RMEF4xzmYNcCzYsJ1Z+bgVCfn
	byMQSGvdgXlN2lto1ndWTmcZ3hdxONN+BGmlWbWv8VvHe33i0YxZDENvZ1ftAxMk
	ZWfWjVQ7Ihpm8W9YX1J6r5PZS5OYKc4z6TX0ORutdyUErrfG860H9TETY2z4n7IW
	q39BfjOxxBGui/rA+Un8G9kfczgjHbLxAAcScKxJeV2NzTI17iWf9p459s0MlMbb
	sg99W0CRbh2w2XlUdc9gXSPF9rKP7jhK8eDZ2yDpMvjwrEGJv4mVhazNYvZHL099
	OXUMpQ==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dv1fm5by-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 10:06:07 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b46e380a400so1171257a12.0
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 03:06:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754906766; x=1755511566;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TZ/dceqjtDi5aPbykVkxqjO86bUfZyp7+P+A+wh4Mr0=;
        b=kCOZ/E38ADSzAgj7pI3S1RaHkQ+l3fNUbh3JnBGp6Qb3PRRkrbDsjQfJ83NoqtooTS
         oJdch+mxJpKJGoe9nlYUQ5D49EVo29jkVaVxnJjFGCtIivWgTsMru+MQWkuZYCA5lBBM
         pJbbxJ4LtfTIdrJnome1JS8aBYob0R5ch+NCcTXWqhGOA0COaTdohVM8iQodK5SdEUZ4
         U4gR8UicbtStRwUhFNwrG/rQidBDT+vAprNOvKHdr+ThPaponMEVZHmuK43gCwir4R0o
         ACYBPy12v6q2+r6AvpcJVMC511/KnmBBTN+8q8oloG1yN3HFByisxWCK7atNby4mrhqu
         tuRQ==
X-Forwarded-Encrypted: i=1; AJvYcCXxYlq55WwLz0hceBm53/O9CUmcBe7zqpU8elvdQB10AynOz50sB4BJIKHFjX2PB4wV+a5q5JdU8OZe@vger.kernel.org
X-Gm-Message-State: AOJu0YxVGIJSo2X3ctBrGlzhG0lTuMzZmpzDIFuxN9taITy3n2t9qzzZ
	5kthe0qG77fLzGtOodLpT1AjIPuX2Yz0NjjLeZ0uvT2QksdUzDbRQYx4gZlCstAYbNPc3AblysS
	5Kg19mL2zZbEm+fP0aWM0LILxy704MNtGop5rw74qeGKZ5LtngqC33hpDXxnDjnS/
X-Gm-Gg: ASbGncurg2ChVAvaPuessBBK1TFtOyG8MRzIHfvy9K4y6+XZlxq+2gwBS/otfFpLbEI
	hJYJJaf3e7xaxQqVzOFOeCIfkTlXhD4VfxH9YYatEKXzfzQaIurPfQCL6FSJJQNQY0FBDEqVaPg
	Xtqqn97Ft8iedojtbvnn/68LNA6NpDq0HGMZ8tosAm/o4A3m0uh6zkSivxfIyLIFnny9wtQQ7vs
	/85DwFy5TnFEBhXRUjYVu9WRxiSBii9sSxXMYsAK8hULhOLavIqOePRsv6ihlBK8flqji0g/VtZ
	M8OWV1gYR+6pgnPdNh3BtOHpmKtyYxaYHchSsVc2C1998X88b/thuQ+Zda4FBBWYiGFry1lZAw=
	=
X-Received: by 2002:a05:6a20:3949:b0:240:af8:1758 with SMTP id adf61e73a8af0-240551e9da8mr18321240637.45.1754906766039;
        Mon, 11 Aug 2025 03:06:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHBSXsYakz/wnYLLtXDpGCCBYPXdXvvOJ71swjbLGCAep7jA1LEkHm2HVopX9muR2HS2ZGZ7g==
X-Received: by 2002:a05:6a20:3949:b0:240:af8:1758 with SMTP id adf61e73a8af0-240551e9da8mr18321186637.45.1754906765540;
        Mon, 11 Aug 2025 03:06:05 -0700 (PDT)
Received: from [10.218.42.132] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76bccfbd156sm26403355b3a.84.2025.08.11.03.06.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Aug 2025 03:06:05 -0700 (PDT)
Message-ID: <8e67bfa0-e62c-4060-9ac4-de212ae63570@oss.qualcomm.com>
Date: Mon, 11 Aug 2025 15:35:58 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] opp: Add bw_factor support to adjust bandwidth
 dynamically
To: Viresh Kumar <viresh.kumar@linaro.org>
Cc: Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20250717-opp_pcie-v1-0-dde6f452571b@oss.qualcomm.com>
 <0dfe9025-de00-4ec2-b6ca-5ef8d9414301@oss.qualcomm.com>
 <20250801072845.ppxka4ry4dtn6j3m@vireshk-i7>
 <7bac637b-9483-4341-91c0-e31d5c2f0ea3@oss.qualcomm.com>
 <20250801085628.7gdqycsggnqxdr67@vireshk-i7>
 <7f1393ab-5ae2-428a-92f8-3c8a5df02058@oss.qualcomm.com>
 <20250804111340.t62d4y2zg77rr3rp@vireshk-i7>
 <6035a961-7c5a-4fde-b4ea-e9ea9d88e6c1@oss.qualcomm.com>
 <20250811084453.ocibslv6kxkib6po@vireshk-i7>
Content-Language: en-US
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
In-Reply-To: <20250811084453.ocibslv6kxkib6po@vireshk-i7>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: KAierYlQS3BPx35Zf_mGQ_QZgC7pjpXI
X-Authority-Analysis: v=2.4 cv=cLTgskeN c=1 sm=1 tr=0 ts=6899c08f cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=rbqKxxxGQXOgEjNPzAoA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAwMyBTYWx0ZWRfX3IWH/fLX+cYq
 6cnhttBG7neF9Ugzfpc1lpo02OnY2D82nMH9ur95USnSFrxcCTSa+r1c2tzimbVDPVQA98XBMPU
 V/J1q9DMD/86N33Jdr91pFHxCc1lFUj1hxvsntGI1c21gLF2znXrQOJIstrOlWh83rWpwrCapNv
 nNvP/nPZMV23473Rj7pDidr4pJTNE/HIft4jkf4YS3cXPTPDume8+MiAjhcZ42vyJcdqB+Q+VWf
 /zNNwG2xeil8lQbZV+aiSVd8f1M+DVzFxkyXw2vdiVHordtZ3zKn6pJEPfi359bJlH0EtqBW6XN
 iDbqqjdTODipnpZAz+WPfoYy5mNvS6KeDo8yTYfOV81MO/Bi6PlVDc9ZQrgerJP0Ome/dM6UpNT
 vAJtVsHa
X-Proofpoint-ORIG-GUID: KAierYlQS3BPx35Zf_mGQ_QZgC7pjpXI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-11_01,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 phishscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 suspectscore=0 spamscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090003



On 8/11/2025 2:14 PM, Viresh Kumar wrote:
> Sorry for the delay, I was travelling a bit recently.
> 
> On 06-08-25, 10:35, Krishna Chaitanya Chundru wrote:
>> On 8/4/2025 4:43 PM, Viresh Kumar wrote:
>>> On 01-08-25, 15:05, Krishna Chaitanya Chundru wrote:
>>>> Currently we are fetching the OPP based on the frequency and setting
>>>> that OPP using dev_pm_opp_set_opp().
>>>>
>>>> As you are suggesting to use dev_pm_opp_set_prop_name() here.
>>>> This what I understood
>>>>
>>>> First set prop name using dev_pm_opp_set_prop_name then
>>>> set opp dev_pm_opp_set_opp()
>>>>
>>>> if you want to change above one we need to first clear using
>>>> dev_pm_opp_put_prop_name() then again call dev_pm_opp_set_prop_name
>>>> & dev_pm_opp_set_opp()
>>>
>>> dev_pm_opp_set_prop_name() should be called only once at boot time and not
>>> again later on. It is there to configure one of the named properties before the
>>> OPP table initializes for a device. Basically it is there to select one of the
>>> available properties for an OPP, like selecting a voltage applicable for an OPP
>>> for a device.
>>
>> Then we can't use this dev_pm_opp_set_prop_name(), there is possibility
>> link width x1, x2, x4 etc can also change at runtime.
> 
> Hmm, looking at the way you have implemented the bw multiplier, you
> are going to call that every time you need to change the OPP
> configuration. That doesn't look nice TBH. Such configurations are
> normally provided via DT or are configured once at boot and not
> touched after that. What you are basically doing is something like,
> adding a single OPP in DT and changing the OPP frequency right before
> setting it at runtime.
> 
> FWIW, you are allowed to add multiple OPPs with same frequency value
> but different bandwidths or levels. I think you should use that and
> correctly describe the hardware first (which is the step in the right
> direction). And then you can find the right OPP at runtime and send a
> request to configure it. That way we can avoid adding hacks in the OPP
> core.
Thanks Viresh for the suggestion. We will try this.
Can you confirm this is what you are expecting.

dt change
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -2214,13 +2214,23 @@ opp-2500000 {
                                         opp-hz = /bits/ 64 <2500000>;
                                         required-opps = 
<&rpmhpd_opp_low_svs>;
                                         opp-peak-kBps = <250000 1>;
+                                       opp-level = <1>;
                                 };

-                               /* GEN 1 x2 and GEN 2 x1 */
+                               /* GEN 1 x2 */
                                 opp-5000000 {
                                         opp-hz = /bits/ 64 <5000000>;
                                         required-opps = 
<&rpmhpd_opp_low_svs>;
                                         opp-peak-kBps = <500000 1>;
+                                       opp-level = <1>;
+                               };
+
+                               /* GEN 2 x1 */
+                               opp-5000000 {
+                                       opp-hz = /bits/ 64 <5000000>;
+                                       required-opps = 
<&rpmhpd_opp_low_svs>;
+                                       opp-peak-kBps = <500000 1>;
+                                       opp-level = <2>;
                                 };

                                 /* GEN 2 x2 */
@@ -2228,6 +2238,7 @@ opp-10000000 {
                                         opp-hz = /bits/ 64 <10000000>;
                                         required-opps = 
<&rpmhpd_opp_low_svs>;
                                         opp-peak-kBps = <1000000 1>;
+                                       opp-level = <2>;
                                 };

                                 /* GEN 3 x1 */
@@ -2235,13 +2246,23 @@ opp-8000000 {
                                         opp-hz = /bits/ 64 <8000000>;
                                         required-opps = <&rpmhpd_opp_nom>;
                                         opp-peak-kBps = <984500 1>;
+                                       opp-level = <3>;
+                               };
+
+                               /* GEN 3 x2 */
+                               opp-16000000 {
+                                       opp-hz = /bits/ 64 <16000000>;
+                                       required-opps = <&rpmhpd_opp_nom>;
+                                       opp-peak-kBps = <1969000 1>;
+                                       opp-level = <3>;
                                 };

-                               /* GEN 3 x2 and GEN 4 x1 */
+                               /*GEN 4 x1 */
                                 opp-16000000 {
                                         opp-hz = /bits/ 64 <16000000>;
                                         required-opps = <&rpmhpd_opp_nom>;
                                         opp-peak-kBps = <1969000 1>;
+                                       opp-level = <4>;
                                 };

                                 /* GEN 4 x2 */
@@ -2249,6 +2270,7 @@ opp-32000000 {
                                         opp-hz = /bits/ 64 <32000000>;
                                         required-opps = <&rpmhpd_opp_nom>;
                                         opp-peak-kBps = <3938000 1>;
+                                       opp-level = <4>;
                                 };
                         };


And in the driver I need to have a change in OPP framework which
returns OPP based on both frequency and level something like
dev_pm_opp_find_level_freq_exact(struct device *dev,
unsigned int level, unsigned int freq);

Please correct me if this is not suggested approach.

- Krishna Chaitanya.
> 

